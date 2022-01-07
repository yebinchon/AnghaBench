
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,int ) ;
 int assert (int ) ;
 int strlen (char const*) ;
 int svn_uri_is_canonical (char const*,int *) ;
 scalar_t__ svn_uri_is_root (char const*,int ) ;
 int uri_previous_segment (char const*,int ) ;

char *
svn_uri_dirname(const char *uri, apr_pool_t *pool)
{
  apr_size_t len = strlen(uri);

  assert(svn_uri_is_canonical(uri, pool));

  if (svn_uri_is_root(uri, len))
    return apr_pstrmemdup(pool, uri, len);
  else
    return apr_pstrmemdup(pool, uri, uri_previous_segment(uri, len));
}
