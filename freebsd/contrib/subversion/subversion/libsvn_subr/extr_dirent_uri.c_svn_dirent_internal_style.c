
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int internal_style (char const*,int *) ;
 char const* svn_dirent_canonicalize (int ,int *) ;

const char *
svn_dirent_internal_style(const char *dirent, apr_pool_t *pool)
{
  return svn_dirent_canonicalize(internal_style(dirent, pool), pool);
}
