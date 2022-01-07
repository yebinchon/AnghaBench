
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thrd_t ;


 int pthread_self () ;

thrd_t
thrd_current(void)
{

 return (pthread_self());
}
