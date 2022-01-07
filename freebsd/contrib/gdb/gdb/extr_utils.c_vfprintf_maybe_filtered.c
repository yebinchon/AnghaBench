
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 int fputs_maybe_filtered (char*,struct ui_file*,int) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int xfree ;
 int xvasprintf (char**,char const*,int ) ;

__attribute__((used)) static void
vfprintf_maybe_filtered (struct ui_file *stream, const char *format,
    va_list args, int filter)
{
  char *linebuffer;
  struct cleanup *old_cleanups;

  xvasprintf (&linebuffer, format, args);
  old_cleanups = make_cleanup (xfree, linebuffer);
  fputs_maybe_filtered (linebuffer, stream, filter);
  do_cleanups (old_cleanups);
}
