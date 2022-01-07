
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 scalar_t__ LEAP_NOTINSYNC ;
 scalar_t__ LEAP_NOWARNING ;
 scalar_t__ leap_sec_in_progress ;
 TYPE_1__ leap_smear ;
 scalar_t__ sys_leap ;
 scalar_t__ xmt_leap ;

void
set_sys_leap(
 u_char new_sys_leap
 )
{
 sys_leap = new_sys_leap;
 xmt_leap = sys_leap;





 if (xmt_leap != LEAP_NOTINSYNC) {
  if (leap_sec_in_progress) {

   xmt_leap = LEAP_NOTINSYNC;
  }
 }
}
