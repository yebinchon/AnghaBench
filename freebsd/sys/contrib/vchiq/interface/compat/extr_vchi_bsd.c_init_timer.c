
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; int callout; int mtx; } ;


 int MTX_SPIN ;
 int callout_init (int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;

void
init_timer(struct timer_list *t)
{
 mtx_init(&t->mtx, "dahdi timer lock", ((void*)0), MTX_SPIN);
 callout_init(&t->callout, 1);
 t->expires = 0;




}
