
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 size_t INTERPOS_fork ;
 scalar_t__* __libc_interposing ;
 int stub1 () ;

pid_t
fork(void)
{

 return (((pid_t (*)(void))__libc_interposing[INTERPOS_fork])());
}
