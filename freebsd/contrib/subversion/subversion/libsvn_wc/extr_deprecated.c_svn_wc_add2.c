
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int svn_depth_infinity ;
 int * svn_wc_add3 (char const*,int *,int ,char const*,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_add2(const char *path,
            svn_wc_adm_access_t *parent_access,
            const char *copyfrom_url,
            svn_revnum_t copyfrom_rev,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            svn_wc_notify_func2_t notify_func,
            void *notify_baton,
            apr_pool_t *pool)
{
  return svn_wc_add3(path, parent_access, svn_depth_infinity,
                     copyfrom_url, copyfrom_rev,
                     cancel_func, cancel_baton,
                     notify_func, notify_baton, pool);
}
