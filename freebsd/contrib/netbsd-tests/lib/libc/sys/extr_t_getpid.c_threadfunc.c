
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int getpid () ;

__attribute__((used)) static void *
threadfunc(void *arg)
{
 *(pid_t *)arg = getpid();

 return ((void*)0);
}
