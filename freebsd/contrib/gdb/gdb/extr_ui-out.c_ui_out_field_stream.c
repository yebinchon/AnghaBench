
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_stream {int stream; } ;
struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int ui_file_rewind (int ) ;
 char* ui_file_xstrdup (int ,long*) ;
 int ui_out_field_skip (struct ui_out*,char const*) ;
 int ui_out_field_string (struct ui_out*,char const*,char*) ;
 int xfree ;

void
ui_out_field_stream (struct ui_out *uiout,
       const char *fldname,
       struct ui_stream *buf)
{
  long length;
  char *buffer = ui_file_xstrdup (buf->stream, &length);
  struct cleanup *old_cleanup = make_cleanup (xfree, buffer);
  if (length > 0)
    ui_out_field_string (uiout, fldname, buffer);
  else
    ui_out_field_skip (uiout, fldname);
  ui_file_rewind (buf->stream);
  do_cleanups (old_cleanup);
}
