
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ drain_bucket (int *) ;
 int * svn_ra_serf__wrap_err (scalar_t__,int *) ;

svn_error_t *
svn_ra_serf__handle_discard_body(serf_request_t *request,
                                 serf_bucket_t *response,
                                 void *baton,
                                 apr_pool_t *pool)
{
  apr_status_t status;

  status = drain_bucket(response);
  if (status)
    return svn_ra_serf__wrap_err(status, ((void*)0));

  return SVN_NO_ERROR;
}
