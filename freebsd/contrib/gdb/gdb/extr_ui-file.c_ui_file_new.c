
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int * magic; } ;


 int null_file_delete ;
 int null_file_flush ;
 int null_file_fputs ;
 int null_file_isatty ;
 int null_file_put ;
 int null_file_read ;
 int null_file_rewind ;
 int null_file_write ;
 int set_ui_file_data (struct ui_file*,int *,int ) ;
 int set_ui_file_flush (struct ui_file*,int ) ;
 int set_ui_file_fputs (struct ui_file*,int ) ;
 int set_ui_file_isatty (struct ui_file*,int ) ;
 int set_ui_file_put (struct ui_file*,int ) ;
 int set_ui_file_read (struct ui_file*,int ) ;
 int set_ui_file_rewind (struct ui_file*,int ) ;
 int set_ui_file_write (struct ui_file*,int ) ;
 int ui_file_magic ;
 struct ui_file* xmalloc (int) ;

struct ui_file *
ui_file_new (void)
{
  struct ui_file *file = xmalloc (sizeof (struct ui_file));
  file->magic = &ui_file_magic;
  set_ui_file_data (file, ((void*)0), null_file_delete);
  set_ui_file_flush (file, null_file_flush);
  set_ui_file_write (file, null_file_write);
  set_ui_file_fputs (file, null_file_fputs);
  set_ui_file_read (file, null_file_read);
  set_ui_file_isatty (file, null_file_isatty);
  set_ui_file_rewind (file, null_file_rewind);
  set_ui_file_put (file, null_file_put);
  return file;
}
