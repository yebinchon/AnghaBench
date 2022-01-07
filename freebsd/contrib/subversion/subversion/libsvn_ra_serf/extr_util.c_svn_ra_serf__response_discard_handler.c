
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int drain_bucket (int *) ;

apr_status_t
svn_ra_serf__response_discard_handler(serf_request_t *request,
                                      serf_bucket_t *response,
                                      void *baton,
                                      apr_pool_t *pool)
{
  return drain_bucket(response);
}
