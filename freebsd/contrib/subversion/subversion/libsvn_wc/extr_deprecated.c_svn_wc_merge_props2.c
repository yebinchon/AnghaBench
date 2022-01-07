
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc_notify_state_t ;
typedef int svn_wc_context_t ;
typedef scalar_t__ svn_wc_conflict_resolver_func_t ;
typedef int svn_wc_adm_access_t ;
struct TYPE_7__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct conflict_func_1to2_baton {void* inner_baton; scalar_t__ inner_func; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_ERR_UNVERSIONED_RESOURCE ;


 int U_ (char*) ;
 int * conflict_func_1to2_wrapper ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_create (int ,int *,int ) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc_context_destroy (int *) ;
 TYPE_1__* svn_wc_merge_props3 (int *,int *,char const*,int *,int *,int *,int const*,scalar_t__,int *,struct conflict_func_1to2_baton*,int *,int *,int *) ;

svn_error_t *
svn_wc_merge_props2(svn_wc_notify_state_t *state,
                    const char *path,
                    svn_wc_adm_access_t *adm_access,
                    apr_hash_t *baseprops,
                    const apr_array_header_t *propchanges,
                    svn_boolean_t base_merge,
                    svn_boolean_t dry_run,
                    svn_wc_conflict_resolver_func_t conflict_func,
                    void *conflict_baton,
                    apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  svn_error_t *err;
  svn_wc_context_t *wc_ctx;
  struct conflict_func_1to2_baton conflict_wrapper;

  if (base_merge && !dry_run)
    return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                            U_("base_merge=TRUE is no longer supported; "
                               "see notes/api-errata/1.7/wc006.txt"));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));

  conflict_wrapper.inner_func = conflict_func;
  conflict_wrapper.inner_baton = conflict_baton;

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0),
                                         svn_wc__adm_get_db(adm_access),
                                         scratch_pool));

  err = svn_wc_merge_props3(state,
                            wc_ctx,
                            local_abspath,
                            ((void*)0) ,
                            ((void*)0) ,
                            baseprops,
                            propchanges,
                            dry_run,
                            conflict_func ? conflict_func_1to2_wrapper
                                          : ((void*)0),
                            &conflict_wrapper,
                            ((void*)0), ((void*)0),
                            scratch_pool);

  if (err)
    switch(err->apr_err)
      {
        case 129:
        case 128:
          err->apr_err = SVN_ERR_UNVERSIONED_RESOURCE;
          break;
      }
  return svn_error_trace(
            svn_error_compose_create(err,
                                     svn_wc_context_destroy(wc_ctx)));
}
