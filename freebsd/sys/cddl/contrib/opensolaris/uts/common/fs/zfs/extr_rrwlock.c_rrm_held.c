
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * locks; } ;
typedef TYPE_1__ rrmlock_t ;
typedef scalar_t__ krw_t ;
typedef int boolean_t ;


 size_t RRM_TD_LOCK () ;
 scalar_t__ RW_WRITER ;
 int rrw_held (int *,scalar_t__) ;

boolean_t
rrm_held(rrmlock_t *rrl, krw_t rw)
{
 if (rw == RW_WRITER) {
  return (rrw_held(&rrl->locks[0], rw));
 } else {
  return (rrw_held(&rrl->locks[RRM_TD_LOCK()], rw));
 }
}
