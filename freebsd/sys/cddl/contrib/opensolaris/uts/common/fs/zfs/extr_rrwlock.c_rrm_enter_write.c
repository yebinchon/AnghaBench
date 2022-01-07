
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * locks; } ;
typedef TYPE_1__ rrmlock_t ;


 int RRM_NUM_LOCKS ;
 int rrw_enter_write (int *) ;

void
rrm_enter_write(rrmlock_t *rrl)
{
 int i;

 for (i = 0; i < RRM_NUM_LOCKS; i++)
  rrw_enter_write(&rrl->locks[i]);
}
