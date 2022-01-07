
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddist; scalar_t__ tai_diff; } ;
typedef TYPE_1__ leap_result_t ;


 int leap_sec_in_progress ;
 int set_sys_leap (int ) ;
 int sys_leap ;

__attribute__((used)) static void
check_leap_sec_in_progress( const leap_result_t *lsdata ) {
 int prv_leap_sec_in_progress = leap_sec_in_progress;
 leap_sec_in_progress = lsdata->tai_diff && (lsdata->ddist < 3);


 if (leap_sec_in_progress != prv_leap_sec_in_progress)
  set_sys_leap(sys_leap);
}
