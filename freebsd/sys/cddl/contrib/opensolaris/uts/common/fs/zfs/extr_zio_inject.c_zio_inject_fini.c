
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inject_delay_mtx ;
 int inject_handlers ;
 int inject_lock ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;
 int rw_destroy (int *) ;

void
zio_inject_fini(void)
{
 list_destroy(&inject_handlers);
 mutex_destroy(&inject_delay_mtx);
 rw_destroy(&inject_lock);
}
