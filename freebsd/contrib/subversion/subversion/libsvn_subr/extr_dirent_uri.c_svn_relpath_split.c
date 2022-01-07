
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int assert (int) ;
 char* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;

void
svn_relpath_split(const char **dirpath,
                  const char **base_name,
                  const char *relpath,
                  apr_pool_t *pool)
{
  assert(dirpath != base_name);

  if (dirpath)
    *dirpath = svn_relpath_dirname(relpath, pool);

  if (base_name)
    *base_name = svn_relpath_basename(relpath, pool);
}
