
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int svn_wc_conflict_choose_merged ;
 int * svn_wc_resolved_conflict3 (char const*,int *,int ,int ,int ,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_resolved_conflict2(const char *path,
                          svn_wc_adm_access_t *adm_access,
                          svn_boolean_t resolve_text,
                          svn_boolean_t resolve_props,
                          svn_boolean_t recurse,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          apr_pool_t *pool)
{
  return svn_wc_resolved_conflict3(path, adm_access, resolve_text,
                                   resolve_props,
                                   SVN_DEPTH_INFINITY_OR_EMPTY(recurse),
                                   svn_wc_conflict_choose_merged,
                                   notify_func, notify_baton, cancel_func,
                                   cancel_baton, pool);
}
