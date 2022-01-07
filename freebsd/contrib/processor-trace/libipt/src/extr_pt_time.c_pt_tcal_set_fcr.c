
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_time_cal {scalar_t__ min_fcr; scalar_t__ max_fcr; scalar_t__ fcr; } ;


 int pte_internal ;

int pt_tcal_set_fcr(struct pt_time_cal *tcal, uint64_t fcr)
{
 if (!tcal)
  return -pte_internal;

 tcal->fcr = fcr;

 if (fcr < tcal->min_fcr)
  tcal->min_fcr = fcr;

 if (fcr > tcal->max_fcr)
  tcal->max_fcr = fcr;

 return 0;
}
