
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_time_cal {int fcr; } ;


 int pt_tcal_have_fcr (struct pt_time_cal const*) ;
 int pte_internal ;
 int pte_no_time ;

int pt_tcal_fcr(uint64_t *fcr, const struct pt_time_cal *tcal)
{
 if (!fcr || !tcal)
  return -pte_internal;

 if (!pt_tcal_have_fcr(tcal))
  return -pte_no_time;

 *fcr = tcal->fcr;

 return 0;
}
