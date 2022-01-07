
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quick_exit_handler {void (* cleanup ) () ;struct quick_exit_handler* next; } ;


 int __compiler_membar () ;
 int atexit_mutex ;
 struct quick_exit_handler* handlers ;
 struct quick_exit_handler* malloc (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
at_quick_exit(void (*func)(void))
{
 struct quick_exit_handler *h;

 h = malloc(sizeof(*h));

 if (((void*)0) == h)
  return (1);
 h->cleanup = func;
 pthread_mutex_lock(&atexit_mutex);
 h->next = handlers;
 __compiler_membar();
 handlers = h;
 pthread_mutex_unlock(&atexit_mutex);
 return (0);
}
