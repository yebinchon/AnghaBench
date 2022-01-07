
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int DOFORK (int ) ;
 int fork ;

pid_t
dofork()
{
 register pid_t pid = -1;

 DOFORK(fork);
 return pid;
}
