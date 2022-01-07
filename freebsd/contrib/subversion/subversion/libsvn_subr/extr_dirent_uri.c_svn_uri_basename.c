
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 int assert (int ) ;
 int strlen (char const*) ;
 char const* svn_path_uri_decode (char const*,int *) ;
 int svn_uri_is_canonical (char const*,int *) ;
 scalar_t__ svn_uri_is_root (char const*,int) ;

const char *
svn_uri_basename(const char *uri, apr_pool_t *pool)
{
  apr_size_t len = strlen(uri);
  apr_size_t start;

  assert(svn_uri_is_canonical(uri, ((void*)0)));

  if (svn_uri_is_root(uri, len))
    return "";

  start = len;
  while (start > 0 && uri[start - 1] != '/')
    --start;

  return svn_path_uri_decode(uri + start, pool);
}
