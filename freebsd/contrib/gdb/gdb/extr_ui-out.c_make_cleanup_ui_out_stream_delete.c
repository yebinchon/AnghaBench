
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_stream_delete ;
 struct cleanup* make_cleanup (int ,struct ui_stream*) ;

struct cleanup *
make_cleanup_ui_out_stream_delete (struct ui_stream *buf)
{
  return make_cleanup (do_stream_delete, buf);
}
