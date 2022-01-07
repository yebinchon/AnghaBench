
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_pipe2 (int*,int ) ;

int
__sys_pipe(int fildes[2])
{

 return (__sys_pipe2(fildes, 0));
}
