
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_wc_adm_open3 (int **,int *,char const*,scalar_t__,int,int *,int *,int *) ;

svn_error_t *
svn_wc_adm_open(svn_wc_adm_access_t **adm_access,
                svn_wc_adm_access_t *associated,
                const char *path,
                svn_boolean_t write_lock,
                svn_boolean_t tree_lock,
                apr_pool_t *pool)
{
  return svn_wc_adm_open3(adm_access, associated, path, write_lock,
                          (tree_lock ? -1 : 0), ((void*)0), ((void*)0), pool);
}
