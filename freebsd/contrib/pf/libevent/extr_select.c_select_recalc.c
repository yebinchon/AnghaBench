
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selectop {int dummy; } ;
struct event_base {int dummy; } ;


 int check_selectop (struct selectop*) ;

int
select_recalc(struct event_base *base, void *arg, int max)
{
 struct selectop *sop = arg;

 check_selectop(sop);

 return (0);
}
