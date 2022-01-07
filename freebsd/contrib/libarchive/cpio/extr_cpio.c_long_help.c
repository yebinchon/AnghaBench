
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fputs (char const*,int ) ;
 char* lafe_getprogname () ;
 char* long_help_msg ;
 int printf (char*,char const*,char const*) ;
 int putchar (char const) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 int version () ;

__attribute__((used)) static void
long_help(void)
{
 const char *prog;
 const char *p;

 prog = lafe_getprogname();

 fflush(stderr);

 p = (strcmp(prog,"bsdcpio") != 0) ? "(bsdcpio)" : "";
 printf("%s%s: manipulate archive files\n", prog, p);

 for (p = long_help_msg; *p != '\0'; p++) {
  if (*p == '%') {
   if (p[1] == 'p') {
    fputs(prog, stdout);
    p++;
   } else
    putchar('%');
  } else
   putchar(*p);
 }
 version();
}
