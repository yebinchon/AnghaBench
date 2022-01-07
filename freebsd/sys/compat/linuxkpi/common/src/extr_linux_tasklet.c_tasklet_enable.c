
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int count; } ;


 int atomic_dec (int *) ;

void
tasklet_enable(struct tasklet_struct *ts)
{

 atomic_dec(&ts->count);
}
