
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int dummy; } ;


 int uni_init (struct uni*) ;
 int uni_stop (struct uni*) ;

void
uni_reset(struct uni *uni)
{
 uni_stop(uni);
 uni_init(uni);
}
