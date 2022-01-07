
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct tui_stream {scalar_t__ ts_buflen; int * ts_strbuf; int * ts_filestream; int ts_streamtype; } ;
typedef int FILE ;


 int afile ;
 struct ui_file* tui_file_new () ;
 struct tui_stream* ui_file_data (struct ui_file*) ;

struct ui_file *
tui_fileopen (FILE *stream)
{
  struct ui_file *file = tui_file_new ();
  struct tui_stream *tmpstream = ui_file_data (file);
  tmpstream->ts_streamtype = afile;
  tmpstream->ts_filestream = stream;
  tmpstream->ts_strbuf = ((void*)0);
  tmpstream->ts_buflen = 0;
  return file;
}
