
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static const char *
subtract_anchor(const char *anchor, const char *url, apr_pool_t *pool)
{
  return svn_uri_skip_ancestor(anchor, url, pool);
}
