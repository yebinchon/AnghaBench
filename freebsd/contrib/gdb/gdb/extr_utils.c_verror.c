
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ui_file {int dummy; } ;


 int error_stream (struct ui_file*) ;
 int make_cleanup_ui_file_delete (struct ui_file*) ;
 struct ui_file* mem_fileopen () ;
 int vfprintf_unfiltered (struct ui_file*,char const*,int ) ;

void
verror (const char *string, va_list args)
{
  struct ui_file *tmp_stream = mem_fileopen ();
  make_cleanup_ui_file_delete (tmp_stream);
  vfprintf_unfiltered (tmp_stream, string, args);
  error_stream (tmp_stream);
}
