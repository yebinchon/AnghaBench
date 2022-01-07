
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cxa_atexit (void (*) (void*),void*,void*) ;

int
__aeabi_atexit(void *object, void (*func)(void*), void *dso)
{
 return __cxa_atexit(func, object, dso);
}
