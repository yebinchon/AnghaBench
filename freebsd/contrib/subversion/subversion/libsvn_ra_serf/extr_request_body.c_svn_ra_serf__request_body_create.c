
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stream; int * result_pool; int in_memory_size; } ;
typedef TYPE_1__ svn_ra_serf__request_body_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int request_body_stream_close ;
 int request_body_stream_write ;
 int svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_close (int ,int ) ;
 int svn_stream_set_write (int ,int ) ;

svn_ra_serf__request_body_t *
svn_ra_serf__request_body_create(apr_size_t in_memory_size,
                                 apr_pool_t *result_pool)
{
  svn_ra_serf__request_body_t *body = apr_pcalloc(result_pool, sizeof(*body));

  body->in_memory_size = in_memory_size;
  body->result_pool = result_pool;
  body->stream = svn_stream_create(body, result_pool);

  svn_stream_set_write(body->stream, request_body_stream_write);
  svn_stream_set_close(body->stream, request_body_stream_close);

  return body;
}
