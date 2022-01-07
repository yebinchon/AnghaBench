
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
default_unexpected_callback(const char *file, int line, const char *format,
       va_list args)
{
 fprintf(stderr, "%s:%d: ", file, line);
 vfprintf(stderr, format, args);
 fprintf(stderr, "\n");
 fflush(stderr);
}
