
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSIG ;
 int STDERR_FILENO ;
 int _write (int ,char const*,int) ;
 int strlen (char const*) ;
 char** sys_siglist ;

void
psignal(int sig, const char *s)
{
 const char *c;

 if (sig >= 0 && sig < NSIG)
  c = sys_siglist[sig];
 else
  c = "Unknown signal";
 if (s != ((void*)0) && *s != '\0') {
  (void)_write(STDERR_FILENO, s, strlen(s));
  (void)_write(STDERR_FILENO, ": ", 2);
 }
 (void)_write(STDERR_FILENO, c, strlen(c));
 (void)_write(STDERR_FILENO, "\n", 1);
}
