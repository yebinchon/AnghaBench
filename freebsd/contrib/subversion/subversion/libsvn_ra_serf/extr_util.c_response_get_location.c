
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int serf_bucket_t ;
struct TYPE_4__ {char* path; } ;
typedef TYPE_1__ apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_uri_parse (int *,char const*,TYPE_1__*) ;
 char* apr_uri_unparse (int *,TYPE_1__*,int ) ;
 char* serf_bucket_headers_get (int *,char*) ;
 int * serf_bucket_response_get_headers (int *) ;
 int svn_path_is_url (char const*) ;
 char const* svn_uri_canonicalize (char const*,int *) ;
 scalar_t__ svn_urlpath__canonicalize (char const*,int *) ;

__attribute__((used)) static const char *
response_get_location(serf_bucket_t *response,
                      const char *base_url,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  serf_bucket_t *headers;
  const char *location;

  headers = serf_bucket_response_get_headers(response);
  location = serf_bucket_headers_get(headers, "Location");
  if (location == ((void*)0))
    return ((void*)0);







  if (*location == '/')
    {
      apr_uri_t uri;
      apr_status_t status;

      status = apr_uri_parse(scratch_pool, base_url, &uri);

      if (status != APR_SUCCESS)
        return ((void*)0);


      uri.path = (char*)svn_urlpath__canonicalize(location, scratch_pool);


      location = apr_uri_unparse(scratch_pool, &uri, 0);


    }
  else if (!svn_path_is_url(location))
    {
      return ((void*)0);
    }

  return svn_uri_canonicalize(location, result_pool);
}
