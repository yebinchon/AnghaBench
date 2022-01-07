
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_dirent_basename (int ,int *) ;
 int svn_dirent_internal_style (char const*,int *) ;

__attribute__((used)) static const char *
ensure_appname(const char *progname,
               apr_pool_t *pool)
{
  if (!progname)
    return "svnrdump";

  return svn_dirent_basename(svn_dirent_internal_style(progname, pool), ((void*)0));
}
