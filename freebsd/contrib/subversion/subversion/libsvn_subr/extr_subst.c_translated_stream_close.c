
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct translated_stream_baton {int iterpool; int stream; int out_baton; scalar_t__ written; } ;


 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_destroy (int ) ;
 int svn_stream_close (int ) ;
 int * translate_chunk (int ,int ,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
translated_stream_close(void *baton)
{
  struct translated_stream_baton *b = baton;
  svn_error_t *err = ((void*)0);

  if (b->written)
    err = translate_chunk(b->stream, b->out_baton, ((void*)0), 0, b->iterpool);

  err = svn_error_compose_create(err, svn_stream_close(b->stream));

  svn_pool_destroy(b->iterpool);

  return svn_error_trace(err);
}
