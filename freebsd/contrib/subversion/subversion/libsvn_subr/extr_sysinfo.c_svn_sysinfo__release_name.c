
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* linux_release_name (int *) ;
 char const* macos_release_name (int *) ;
 char const* release_name_from_uname (int *) ;
 char const* win32_release_name (int *) ;

const char *
svn_sysinfo__release_name(apr_pool_t *pool)
{





  return linux_release_name(pool);





}
