
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int host_callback ;


 int gdb_stderr ;
 int vfprintf_filtered (int ,char const*,int ) ;

__attribute__((used)) static void
gdb_os_evprintf_filtered (host_callback * p, const char *format, va_list ap)
{
  vfprintf_filtered (gdb_stderr, format, ap);
}
