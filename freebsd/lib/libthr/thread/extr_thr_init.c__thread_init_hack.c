
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _libpthread_init (int *) ;

void
_thread_init_hack(void)
{

 _libpthread_init(((void*)0));
}
