
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* svn_fspath__canonicalize (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 char* svn_path_uri_decode (char const*,int *) ;
 char* svn_path_uri_encode (char const*,int *) ;
 char* svn_uri_canonicalize (char const*,int *) ;

const char *
svn_urlpath__canonicalize(const char *uri,
                          apr_pool_t *pool)
{
  if (svn_path_is_url(uri))
    {
      uri = svn_uri_canonicalize(uri, pool);
    }
  else
    {
      uri = svn_fspath__canonicalize(uri, pool);

      uri = svn_path_uri_decode(uri, pool);
      uri = svn_path_uri_encode(uri, pool);
    }
  return uri;
}
