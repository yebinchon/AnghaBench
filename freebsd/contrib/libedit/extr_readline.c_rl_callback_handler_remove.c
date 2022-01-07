
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 int el_end (int *) ;
 int * rl_linefunc ;

void
rl_callback_handler_remove(void)
{
 rl_linefunc = ((void*)0);
 el_end(e);
 e = ((void*)0);
}
