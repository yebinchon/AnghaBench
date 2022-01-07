
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 struct thread* curthread ;

__attribute__((used)) static struct thread *
KeGetCurrentThread(void)
{

 return curthread;
}
