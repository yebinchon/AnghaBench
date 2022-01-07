
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * locks; } ;
typedef TYPE_1__ rrmlock_t ;
typedef int boolean_t ;


 int RRM_NUM_LOCKS ;
 int rrw_init (int *,int ) ;

void
rrm_init(rrmlock_t *rrl, boolean_t track_all)
{
 int i;

 for (i = 0; i < RRM_NUM_LOCKS; i++)
  rrw_init(&rrl->locks[i], track_all);
}
