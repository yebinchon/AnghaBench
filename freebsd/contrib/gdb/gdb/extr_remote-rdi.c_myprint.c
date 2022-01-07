
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int gdb_stdout ;
 int vfprintf_unfiltered (int ,char const*,int ) ;

__attribute__((used)) static void
myprint (void *arg, const char *format, va_list ap)
{
  vfprintf_unfiltered (gdb_stdout, format, ap);
}
