
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_man {int dummy; } ;


 int free (struct roff_man*) ;
 int roff_man_free1 (struct roff_man*) ;

void
roff_man_free(struct roff_man *man)
{
 roff_man_free1(man);
 free(man);
}
