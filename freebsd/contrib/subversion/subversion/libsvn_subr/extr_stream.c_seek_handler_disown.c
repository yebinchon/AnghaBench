
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_seek (void*,int const*) ;

__attribute__((used)) static svn_error_t *
seek_handler_disown(void *baton, const svn_stream_mark_t *mark)
{
  return svn_error_trace(svn_stream_seek(baton, mark));
}
