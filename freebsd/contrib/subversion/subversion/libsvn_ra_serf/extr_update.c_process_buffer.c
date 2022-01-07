
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inner_handler_baton; int * (* inner_handler ) (int *,int *,int ,int *) ;} ;
typedef TYPE_1__ update_delay_baton_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int serf_bucket_destroy (int *) ;
 int * serf_bucket_simple_create (void const*,int ,int *,int *,int *) ;
 int * stub1 (int *,int *,int ,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_ra_serf__create_bucket_with_eagain (void const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
process_buffer(update_delay_baton_t *udb,
               serf_request_t *request,
               const void *data,
               apr_size_t len,
               svn_boolean_t at_eof,
               serf_bucket_alloc_t *alloc,
               apr_pool_t *pool)
{
  serf_bucket_t *tmp_bucket;
  svn_error_t *err;




  if (at_eof)
  {
      tmp_bucket = serf_bucket_simple_create(data, len, ((void*)0), ((void*)0),
                                             alloc);
  }
  else
  {
      tmp_bucket = svn_ra_serf__create_bucket_with_eagain(data, len,
                                                          alloc);
  }



  err = udb->inner_handler(request, tmp_bucket,
                           udb->inner_handler_baton, pool);



  serf_bucket_destroy(tmp_bucket);

  return svn_error_trace(err);
}
