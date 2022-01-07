
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* read_full_fn; void* read_fn; } ;
typedef TYPE_1__ svn_stream_t ;
typedef void* svn_read_fn_t ;



void
svn_stream_set_read2(svn_stream_t *stream,
                     svn_read_fn_t read_fn,
                     svn_read_fn_t read_full_fn)
{
  stream->read_fn = read_fn;
  stream->read_full_fn = read_full_fn;
}
