
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 scalar_t__ myattach (int) ;
 unsigned char mywait (char*,int ) ;
 int signal_pid ;
 int stderr ;

__attribute__((used)) static int
attach_inferior (int pid, char *statusptr, unsigned char *sigptr)
{



  if (myattach (pid) != 0)
    return -1;

  fprintf (stderr, "Attached; pid = %d\n", pid);




  signal_pid = pid;

  *sigptr = mywait (statusptr, 0);

  return 0;
}
