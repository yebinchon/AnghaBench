
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int assert (int) ;
 char* svn_fspath__basename (char const*,int *) ;
 char* svn_fspath__dirname (char const*,int *) ;

void
svn_fspath__split(const char **dirpath,
                  const char **base_name,
                  const char *fspath,
                  apr_pool_t *result_pool)
{
  assert(dirpath != base_name);

  if (dirpath)
    *dirpath = svn_fspath__dirname(fspath, result_pool);

  if (base_name)
    *base_name = svn_fspath__basename(fspath, result_pool);
}
