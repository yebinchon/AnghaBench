
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct ui_file {int dummy; } ;


 int vfprintf_maybe_filtered (struct ui_file*,char const*,int ,int) ;

void
vfprintf_filtered (struct ui_file *stream, const char *format, va_list args)
{
  vfprintf_maybe_filtered (stream, format, args, 1);
}
