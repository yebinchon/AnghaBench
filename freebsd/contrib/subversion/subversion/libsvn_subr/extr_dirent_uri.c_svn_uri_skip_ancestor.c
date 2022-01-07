
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_path_uri_decode (char const*,int *) ;
 char* uri_skip_ancestor (char const*,char const*) ;

const char *
svn_uri_skip_ancestor(const char *parent_uri,
                      const char *child_uri,
                      apr_pool_t *result_pool)
{
  const char *result = uri_skip_ancestor(parent_uri, child_uri);

  return result ? svn_path_uri_decode(result, result_pool) : ((void*)0);
}
