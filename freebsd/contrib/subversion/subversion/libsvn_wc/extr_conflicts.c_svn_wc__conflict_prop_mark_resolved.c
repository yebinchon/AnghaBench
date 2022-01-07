
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* prop_name; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
struct TYPE_8__ {int db; } ;
typedef TYPE_3__ svn_wc_context_t ;
typedef int svn_wc_conflict_choice_t ;
typedef int svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int resolve_prop_conflict_on_node (scalar_t__*,int ,char const*,int *,char const*,int ,int *,int const*,int *,int *,int *) ;
 int svn_wc__db_read_conflict (int **,int *,int *,int ,char const*,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_resolved ;
 int svn_wc_notify_resolved_prop ;

svn_error_t *
svn_wc__conflict_prop_mark_resolved(svn_wc_context_t *wc_ctx,
                                    const char *local_abspath,
                                    const char *propname,
                                    svn_wc_conflict_choice_t choice,
                                    const svn_string_t *merged_value,
                                    svn_wc_notify_func2_t notify_func,
                                    void *notify_baton,
                                    apr_pool_t *scratch_pool)
{
  svn_boolean_t did_resolve;
  svn_skel_t *conflicts;

  SVN_ERR(svn_wc__db_read_conflict(&conflicts, ((void*)0), ((void*)0),
                                   wc_ctx->db, local_abspath,
                                   scratch_pool, scratch_pool));

  if (!conflicts)
    return SVN_NO_ERROR;

  SVN_ERR(resolve_prop_conflict_on_node(&did_resolve, wc_ctx->db,
                                        local_abspath, conflicts,
                                        propname, choice, ((void*)0), merged_value,
                                        ((void*)0), ((void*)0), scratch_pool));

  if (did_resolve && notify_func)
    {
      svn_wc_notify_t *notify;


      if (propname == ((void*)0) || propname[0] == '\0')
        {
          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_resolved,
                                        scratch_pool);
        }
      else
        {
          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_resolved_prop,
                                        scratch_pool);
          notify->prop_name = propname;
        }

      notify_func(notify_baton, notify, scratch_pool);
    }
  return SVN_NO_ERROR;
}
