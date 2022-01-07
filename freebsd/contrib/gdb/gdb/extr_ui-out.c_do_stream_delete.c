
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui_out_stream_delete (void*) ;

__attribute__((used)) static void
do_stream_delete (void *buf)
{
  ui_out_stream_delete (buf);
}
