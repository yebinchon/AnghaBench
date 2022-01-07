
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_wc_conflict_choice_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int wc_ctx; int notify_baton2; int notify_func2; } ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_15__ {int * legacy_prop_conflict_propname; int prop_conflicts; int resolved_props; } ;
typedef TYPE_4__ svn_client_conflict_t ;
struct TYPE_12__ {char* propname; int * merged_propval; } ;
struct TYPE_13__ {TYPE_1__ prop; } ;
struct TYPE_16__ {TYPE_2__ type_data; } ;
typedef TYPE_5__ svn_client_conflict_option_t ;
typedef scalar_t__ svn_client_conflict_option_id_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_pool_get (int ) ;
 void* apr_hash_this_key (int *) ;
 char const* apr_pstrdup (int ,char const*) ;
 int conflict_option_id_to_wc_conflict_choice (scalar_t__) ;
 char* svn_client_conflict_get_local_abspath (TYPE_4__*) ;
 scalar_t__ svn_client_conflict_option_get_id (TYPE_5__*) ;
 scalar_t__ svn_client_conflict_option_merged_text ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_hash_sets (int ,char const*,TYPE_5__*) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__conflict_prop_mark_resolved (int ,char const*,char const*,int ,int const*,int ,int ,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
resolve_prop_conflict(svn_client_conflict_option_t *option,
                      svn_client_conflict_t *conflict,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  svn_wc_conflict_choice_t conflict_choice;
  const char *local_abspath;
  const char *lock_abspath;
  const char *propname = option->type_data.prop.propname;
  svn_error_t *err;
  const svn_string_t *merged_value;

  option_id = svn_client_conflict_option_get_id(option);
  conflict_choice = conflict_option_id_to_wc_conflict_choice(option_id);
  local_abspath = svn_client_conflict_get_local_abspath(conflict);

  if (option_id == svn_client_conflict_option_merged_text)
    merged_value = option->type_data.prop.merged_propval;
  else
    merged_value = ((void*)0);

  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));
  err = svn_wc__conflict_prop_mark_resolved(ctx->wc_ctx, local_abspath,
                                            propname, conflict_choice,
                                            merged_value,
                                            ctx->notify_func2,
                                            ctx->notify_baton2,
                                            scratch_pool);
  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  svn_io_sleep_for_timestamps(local_abspath, scratch_pool);
  SVN_ERR(err);

  if (propname[0] == '\0')
    {
      apr_hash_index_t *hi;


      for (hi = apr_hash_first(scratch_pool, conflict->prop_conflicts);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *this_propname = apr_hash_this_key(hi);

          svn_hash_sets(conflict->resolved_props,
                        apr_pstrdup(apr_hash_pool_get(conflict->resolved_props),
                                    this_propname),
                        option);
          svn_hash_sets(conflict->prop_conflicts, this_propname, ((void*)0));
        }

      conflict->legacy_prop_conflict_propname = ((void*)0);
    }
  else
    {
      svn_hash_sets(conflict->resolved_props,
                    apr_pstrdup(apr_hash_pool_get(conflict->resolved_props),
                                propname),
                   option);
      svn_hash_sets(conflict->prop_conflicts, propname, ((void*)0));

      if (apr_hash_count(conflict->prop_conflicts) > 0)
        conflict->legacy_prop_conflict_propname =
            apr_hash_this_key(apr_hash_first(scratch_pool,
                                             conflict->prop_conflicts));
      else
        conflict->legacy_prop_conflict_propname = ((void*)0);
    }

  return SVN_NO_ERROR;
}
