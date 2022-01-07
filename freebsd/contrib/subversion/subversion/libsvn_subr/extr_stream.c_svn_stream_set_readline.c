
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readline_fn; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_stream_readline_fn_t ;



void
svn_stream_set_readline(svn_stream_t *stream,
                        svn_stream_readline_fn_t readline_fn)
{
  stream->readline_fn = readline_fn;
}
