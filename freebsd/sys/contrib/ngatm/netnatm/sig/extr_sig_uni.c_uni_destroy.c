
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int dummy; } ;


 int INS_FREE (struct uni*) ;
 int TIMER_DESTROY_UNI (struct uni*,int ) ;
 int t309 ;
 int t316 ;
 int t317 ;
 int uni_stop (struct uni*) ;

void
uni_destroy(struct uni *uni)
{
 uni_stop(uni);

 TIMER_DESTROY_UNI(uni, t309);
 TIMER_DESTROY_UNI(uni, t316);
 TIMER_DESTROY_UNI(uni, t317);

 INS_FREE(uni);
}
