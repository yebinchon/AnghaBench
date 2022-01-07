
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int _exit (int) ;
 int exit (int) ;
 int iamremote ;
 int write (int ,char*,int) ;

void
lostconn(int signo)
{
 if (!iamremote)
  (void)write(STDERR_FILENO, "lost connection\n", 16);
 if (signo)
  _exit(1);
 else
  exit(1);
}
