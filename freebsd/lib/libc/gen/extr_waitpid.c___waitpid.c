
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 size_t INTERPOS_wait4 ;
 scalar_t__* __libc_interposing ;
 int stub1 (int ,int*,int,struct rusage*) ;

pid_t
__waitpid(pid_t pid, int *istat, int options)
{

 return (((pid_t (*)(pid_t, int *, int, struct rusage *))
     __libc_interposing[INTERPOS_wait4])(pid, istat, options, ((void*)0)));
}
