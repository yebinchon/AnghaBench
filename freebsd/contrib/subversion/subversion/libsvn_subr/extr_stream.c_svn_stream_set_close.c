
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int close_fn; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_close_fn_t ;



void
svn_stream_set_close(svn_stream_t *stream, svn_close_fn_t close_fn)
{
  stream->close_fn = close_fn;
}
