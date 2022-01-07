
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOSYS ;
 int errno ;

pid_t
getsid(pid_t pid)
{
 errno = ENOSYS;
 return -1;
}
