
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;


 int STDERR_FILENO ;
 int errno ;
 int interrupted ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
cmd_interrupt(int signo)
{
 const char msg[] = "\rInterrupt  \n";
 int olderrno = errno;

 (void)write(STDERR_FILENO, msg, sizeof(msg) - 1);
 interrupted = 1;
 errno = olderrno;
}
