
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct tui_stream {scalar_t__ ts_streamtype; int ts_strbuf; } ;


 scalar_t__ astring ;
 int strcat (int ,char const*) ;
 int strlen (char const*) ;
 int tui_file_adjust_strbuf (int ,struct ui_file*) ;
 int tui_puts (char const*) ;
 struct tui_stream* ui_file_data (struct ui_file*) ;

void
tui_file_fputs (const char *linebuffer, struct ui_file *file)
{
  struct tui_stream *stream = ui_file_data (file);

  if (stream->ts_streamtype == astring)
    {
      tui_file_adjust_strbuf (strlen (linebuffer), file);
      strcat (stream->ts_strbuf, linebuffer);
    }
  else
    {
      tui_puts (linebuffer);
    }
}
