
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* svn_path_uri_autoescape (char const*,int *) ;
 char* svn_path_uri_from_iri (char const*,int *) ;
 char const* svn_uri_canonicalize (char const*,int *) ;

__attribute__((used)) static const char *
sanitize_url(const char *url,
             apr_pool_t *pool)
{
  url = svn_path_uri_from_iri(url, pool);
  url = svn_path_uri_autoescape(url, pool);
  return svn_uri_canonicalize(url, pool);
}
