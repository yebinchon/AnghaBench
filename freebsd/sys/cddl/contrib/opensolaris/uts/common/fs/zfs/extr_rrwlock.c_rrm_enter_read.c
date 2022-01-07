
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * locks; } ;
typedef TYPE_1__ rrmlock_t ;


 size_t RRM_TD_LOCK () ;
 int rrw_enter_read (int *,void*) ;

void
rrm_enter_read(rrmlock_t *rrl, void *tag)
{
 rrw_enter_read(&rrl->locks[RRM_TD_LOCK()], tag);
}
