
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_yield () ;

void
thrd_yield(void)
{

 pthread_yield();
}
