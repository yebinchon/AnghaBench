
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,...) ;
 char* lafe_progname ;
 int stderr ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
lafe_vwarnc(int code, const char *fmt, va_list ap)
{
 fprintf(stderr, "%s: ", lafe_progname);
 vfprintf(stderr, fmt, ap);
 if (code != 0)
  fprintf(stderr, ": %s", strerror(code));
 fprintf(stderr, "\n");
}
