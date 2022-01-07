
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct systimer {scalar_t__ enabled; } ;
struct eventtimer {struct systimer* et_priv; } ;



__attribute__((used)) static int
bcm_systimer_stop(struct eventtimer *et)
{
 struct systimer *st = et->et_priv;
 st->enabled = 0;

 return (0);
}
