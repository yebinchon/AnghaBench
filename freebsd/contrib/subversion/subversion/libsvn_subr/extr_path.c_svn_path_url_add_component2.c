
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* svn_path_join_internal (char const*,char const*,int *) ;
 int svn_uri__char_validity ;
 char* uri_escape (char const*,int ,int *) ;

const char *
svn_path_url_add_component2(const char *url,
                            const char *component,
                            apr_pool_t *pool)
{

  component = uri_escape(component, svn_uri__char_validity, pool);

  return svn_path_join_internal(url, component, pool);
}
