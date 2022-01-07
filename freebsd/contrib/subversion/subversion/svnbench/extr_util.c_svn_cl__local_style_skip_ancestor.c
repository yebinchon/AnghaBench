
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_dirent_local_style (char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;

const char *
svn_cl__local_style_skip_ancestor(const char *parent_path,
                                  const char *path,
                                  apr_pool_t *pool)
{
  const char *relpath = ((void*)0);

  if (parent_path)
    relpath = svn_dirent_skip_ancestor(parent_path, path);

  return svn_dirent_local_style(relpath ? relpath : path, pool);
}
