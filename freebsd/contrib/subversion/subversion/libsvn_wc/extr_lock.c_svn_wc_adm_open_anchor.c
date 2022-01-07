
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int open_anchor (int **,int **,char const**,int *,int ,char const*,int ,int,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_wc_adm_open_anchor(svn_wc_adm_access_t **anchor_access,
                       svn_wc_adm_access_t **target_access,
                       const char **target,
                       const char *path,
                       svn_boolean_t write_lock,
                       int levels_to_lock,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *pool)
{
  return svn_error_trace(open_anchor(anchor_access, target_access, target,
                                     ((void*)0), FALSE, path, write_lock,
                                     levels_to_lock, cancel_func,
                                     cancel_baton, pool));
}
