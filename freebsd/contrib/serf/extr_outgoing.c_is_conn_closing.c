
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SERF_ERROR_CLOSING ;
 char* serf_bucket_headers_get (int *,char*) ;
 int * serf_bucket_response_get_headers (int *) ;
 scalar_t__ strcasecmp (char*,char const*) ;

__attribute__((used)) static apr_status_t is_conn_closing(serf_bucket_t *response)
{
    serf_bucket_t *hdrs;
    const char *val;

    hdrs = serf_bucket_response_get_headers(response);
    val = serf_bucket_headers_get(hdrs, "Connection");
    if (val && strcasecmp("close", val) == 0)
        {
            return SERF_ERROR_CLOSING;
        }

    return APR_SUCCESS;
}
