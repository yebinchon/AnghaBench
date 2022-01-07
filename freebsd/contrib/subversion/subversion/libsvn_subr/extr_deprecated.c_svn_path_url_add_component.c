
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* svn_path_canonicalize (char const*,int *) ;
 char const* svn_path_url_add_component2 (char const*,char const*,int *) ;

const char *
svn_path_url_add_component(const char *url,
                           const char *component,
                           apr_pool_t *pool)
{

  url = svn_path_canonicalize(url, pool);

  return svn_path_url_add_component2(url, component, pool);
}
