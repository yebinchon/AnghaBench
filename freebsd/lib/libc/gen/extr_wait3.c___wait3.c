
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int pid_t ;


 size_t INTERPOS_wait4 ;
 int WAIT_ANY ;
 scalar_t__* __libc_interposing ;
 int stub1 (int ,int*,int,struct rusage*) ;

pid_t
__wait3(int *istat, int options, struct rusage *rup)
{

 return (((pid_t (*)(pid_t, int *, int, struct rusage *))
     __libc_interposing[INTERPOS_wait4])(WAIT_ANY, istat, options, rup));
}
