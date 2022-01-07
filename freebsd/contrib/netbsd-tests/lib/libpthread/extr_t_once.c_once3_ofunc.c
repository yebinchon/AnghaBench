
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_testcancel () ;

__attribute__((used)) static void
once3_ofunc(void)
{
 pthread_testcancel();
}
