
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct stdio_file {int close_p; int * file; int * magic; } ;
typedef int FILE ;


 int set_ui_file_data (struct ui_file*,struct stdio_file*,int ) ;
 int set_ui_file_flush (struct ui_file*,int ) ;
 int set_ui_file_fputs (struct ui_file*,int ) ;
 int set_ui_file_isatty (struct ui_file*,int ) ;
 int set_ui_file_read (struct ui_file*,int ) ;
 int set_ui_file_write (struct ui_file*,int ) ;
 int stdio_file_delete ;
 int stdio_file_flush ;
 int stdio_file_fputs ;
 int stdio_file_isatty ;
 int stdio_file_magic ;
 int stdio_file_read ;
 int stdio_file_write ;
 struct ui_file* ui_file_new () ;
 struct stdio_file* xmalloc (int) ;

__attribute__((used)) static struct ui_file *
stdio_file_new (FILE *file, int close_p)
{
  struct ui_file *ui_file = ui_file_new ();
  struct stdio_file *stdio = xmalloc (sizeof (struct stdio_file));
  stdio->magic = &stdio_file_magic;
  stdio->file = file;
  stdio->close_p = close_p;
  set_ui_file_data (ui_file, stdio, stdio_file_delete);
  set_ui_file_flush (ui_file, stdio_file_flush);
  set_ui_file_write (ui_file, stdio_file_write);
  set_ui_file_fputs (ui_file, stdio_file_fputs);
  set_ui_file_read (ui_file, stdio_file_read);
  set_ui_file_isatty (ui_file, stdio_file_isatty);
  return ui_file;
}
