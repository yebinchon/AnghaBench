
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxa_thread_dtor {void (* func ) (void*) ;void* dso; void* obj; } ;


 int ENOMEM ;
 int LIST_INSERT_HEAD (int *,struct cxa_thread_dtor*,int ) ;
 int dtors ;
 int entry ;
 int errno ;
 struct cxa_thread_dtor* malloc (int) ;

int
__cxa_thread_atexit_hidden(void (*dtor_func)(void *), void *obj,
    void *dso_symbol)
{
 struct cxa_thread_dtor *new_dtor;

 new_dtor = malloc(sizeof(*new_dtor));
 if (new_dtor == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }

 new_dtor->obj = obj;
 new_dtor->func = dtor_func;
 new_dtor->dso = dso_symbol;
 LIST_INSERT_HEAD(&dtors, new_dtor, entry);
 return (0);
}
