
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_skip (void*,int ) ;

__attribute__((used)) static svn_error_t *
skip_handler_disown(void *baton, apr_size_t len)
{
  return svn_error_trace(svn_stream_skip(baton, len));
}
