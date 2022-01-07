
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef int wchar_t ;


 int LC_ALL ;
 int LC_CTYPE ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 char* UTF8_LOCALE ;
 int dup2 (int ,int ) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 scalar_t__ putwchar (int) ;
 int * setlocale (int ,char*) ;
 int stderr ;
 int wcwidth (int) ;

int
main(void)
{
 wchar_t wc;
 int width;

 if (setlocale(LC_ALL, "") == ((void*)0)) {
  fputs("setlocale(LC_ALL, \"\") failed\n", stderr);
  return 1;
 }

 if (setlocale(LC_CTYPE, UTF8_LOCALE) == ((void*)0)) {
  fprintf(stderr, "setlocale(LC_CTYPE, \"%s\") failed\n",
      UTF8_LOCALE);
  return 1;
 }

 if (sizeof(wchar_t) < 4) {
  fprintf(stderr, "wchar_t is only %zu bytes\n",
      sizeof(wchar_t));
  return 1;
 }

 if ((width = wcwidth(L' ')) != 1) {
  fprintf(stderr, "wcwidth(L' ') returned %d\n", width);
  return 1;
 }

 dup2(STDERR_FILENO, STDOUT_FILENO);
 wc = L'*';
 if (putwchar(wc) != (wint_t)wc) {
  fputs("bad putwchar return value\n", stderr);
  return 1;
 }

 return 0;
}
