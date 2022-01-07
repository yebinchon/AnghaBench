
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct length_verify_baton_t {int inner; } ;


 int * svn_error_trace (int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
close_handler_length_verify(void *baton)
{
  struct length_verify_baton_t *lvb = baton;

  return svn_error_trace(svn_stream_close(lvb->inner));
}
