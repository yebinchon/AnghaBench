
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_write_fn_t ;
struct TYPE_3__ {int write_fn; } ;
typedef TYPE_1__ svn_stream_t ;



void
svn_stream_set_write(svn_stream_t *stream, svn_write_fn_t write_fn)
{
  stream->write_fn = write_fn;
}
