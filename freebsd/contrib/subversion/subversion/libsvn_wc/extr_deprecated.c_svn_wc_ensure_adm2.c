
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int svn_depth_infinity ;
 int * svn_wc_ensure_adm3 (char const*,char const*,char const*,char const*,int ,int ,int *) ;

svn_error_t *
svn_wc_ensure_adm2(const char *path,
                   const char *uuid,
                   const char *url,
                   const char *repos,
                   svn_revnum_t revision,
                   apr_pool_t *pool)
{
  return svn_wc_ensure_adm3(path, uuid, url, repos, revision,
                            svn_depth_infinity, pool);
}
