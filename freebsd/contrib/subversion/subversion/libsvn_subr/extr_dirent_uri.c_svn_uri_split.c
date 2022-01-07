
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int assert (int) ;
 char* svn_uri_basename (char const*,int *) ;
 char* svn_uri_dirname (char const*,int *) ;

void
svn_uri_split(const char **dirpath,
              const char **base_name,
              const char *uri,
              apr_pool_t *pool)
{
  assert(dirpath != base_name);

  if (dirpath)
    *dirpath = svn_uri_dirname(uri, pool);

  if (base_name)
    *base_name = svn_uri_basename(uri, pool);
}
