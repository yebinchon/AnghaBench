
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_filesize_t ;
struct length_verify_baton_t {int remaining; int * inner; } ;
typedef int apr_pool_t ;


 struct length_verify_baton_t* apr_palloc (int *,int) ;
 int close_handler_length_verify ;
 int read_handler_length_verify ;
 int * svn_stream_create (struct length_verify_baton_t*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_read2 (int *,int *,int ) ;

__attribute__((used)) static svn_stream_t *
get_verify_length_stream(svn_stream_t *inner,
                         svn_filesize_t expected_size,
                         apr_pool_t *result_pool)
{
  struct length_verify_baton_t *lvb = apr_palloc(result_pool, sizeof(*lvb));
  svn_stream_t *len_stream = svn_stream_create(lvb, result_pool);

  lvb->inner = inner;
  lvb->remaining = expected_size;

  svn_stream_set_read2(len_stream, ((void*)0) ,
                       read_handler_length_verify);
  svn_stream_set_close(len_stream, close_handler_length_verify);

  return len_stream;
}
