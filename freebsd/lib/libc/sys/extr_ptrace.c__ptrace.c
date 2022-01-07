
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int caddr_t ;


 int __sys_ptrace (int,int ,int ,int) ;
 scalar_t__ errno ;

int
_ptrace(int request, pid_t pid, caddr_t addr, int data)
{

 errno = 0;
 return (__sys_ptrace(request, pid, addr, data));
}
