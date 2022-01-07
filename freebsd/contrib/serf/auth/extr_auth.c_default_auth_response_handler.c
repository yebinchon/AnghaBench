
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_request_t ;
typedef int serf_connection_t ;
typedef int serf_bucket_t ;
typedef int serf__authn_scheme_t ;
typedef int peer_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;

__attribute__((used)) static apr_status_t
default_auth_response_handler(const serf__authn_scheme_t *scheme,
                              peer_t peer,
                              int code,
                              serf_connection_t *conn,
                              serf_request_t *request,
                              serf_bucket_t *response,
                              apr_pool_t *pool)
{
    return APR_SUCCESS;
}
