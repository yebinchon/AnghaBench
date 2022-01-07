
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct tui_stream {char* ts_strbuf; int ts_buflen; int * ts_filestream; int ts_streamtype; } ;


 int astring ;
 struct ui_file* tui_file_new () ;
 struct tui_stream* ui_file_data (struct ui_file*) ;
 char* xmalloc (int) ;

struct ui_file *
tui_sfileopen (int n)
{
  struct ui_file *file = tui_file_new ();
  struct tui_stream *tmpstream = ui_file_data (file);
  tmpstream->ts_streamtype = astring;
  tmpstream->ts_filestream = ((void*)0);
  if (n > 0)
    {
      tmpstream->ts_strbuf = xmalloc ((n + 1) * sizeof (char));
      tmpstream->ts_strbuf[0] = '\0';
    }
  else


    tmpstream->ts_strbuf = ((void*)0);
  tmpstream->ts_buflen = n;
  return file;
}
