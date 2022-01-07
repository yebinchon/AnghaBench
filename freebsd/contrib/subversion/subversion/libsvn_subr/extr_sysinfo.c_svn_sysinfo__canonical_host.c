
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* canonical_host_from_uname (int *) ;
 char const* win32_canonical_host (int *) ;

const char *
svn_sysinfo__canonical_host(apr_pool_t *pool)
{





  return "unknown-unknown-unknown";

}
