
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback {struct callback* cb_next; void* cb_arg; int * cb_func; } ;
typedef int callback_func ;


 struct callback* callbacks ;
 int errx (int,char*) ;
 struct callback* malloc (int) ;

void
callback_register(callback_func *func, void *arg)
{
 struct callback *cb;

 cb = malloc(sizeof(struct callback));
 if (cb == ((void*)0))
  errx(1, "unable to allocate memory for callback");
 cb->cb_func = func;
 cb->cb_arg = arg;
 cb->cb_next = callbacks;
 callbacks = cb;
}
