
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int mtx; int callout; } ;


 int callout_stop (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

int
del_timer_sync(struct timer_list *t)
{
 mtx_lock_spin(&t->mtx);
 callout_stop(&t->callout);
 mtx_unlock_spin(&t->mtx);

 mtx_destroy(&t->mtx);
 return 0;
}
