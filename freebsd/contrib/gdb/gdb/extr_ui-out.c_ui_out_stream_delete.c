
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int stream; } ;


 int ui_file_delete (int ) ;
 int xfree (struct ui_stream*) ;

void
ui_out_stream_delete (struct ui_stream *buf)
{
  ui_file_delete (buf->stream);
  xfree (buf);
}
