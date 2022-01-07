
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cxa_thread_atexit_hidden (void (*) (void*),void*,void*) ;

int
__cxa_thread_atexit(void (*dtor_func)(void *), void *obj, void *dso_symbol)
{

 return (__cxa_thread_atexit_hidden(dtor_func, obj, dso_symbol));
}
