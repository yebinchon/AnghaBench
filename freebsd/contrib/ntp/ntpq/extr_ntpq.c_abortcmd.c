
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONGJMP (int ,int) ;
 int TRUE ;
 scalar_t__ current_output ;
 int fflush (scalar_t__) ;
 int interrupt_buf ;
 scalar_t__ jump ;
 int putc (char,scalar_t__) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

__attribute__((used)) static int
abortcmd(void)
{
 if (current_output == stdout)
  (void) fflush(stdout);
 putc('\n', stderr);
 (void) fflush(stderr);
 if (jump) {
  jump = 0;
  LONGJMP(interrupt_buf, 1);
 }
 return TRUE;
}
