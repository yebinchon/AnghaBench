
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {int min_fcr; } ;


 int UINT64_MAX ;
 int memset (struct pt_time_cal*,int ,int) ;

void pt_tcal_init(struct pt_time_cal *tcal)
{
 if (!tcal)
  return;

 memset(tcal, 0, sizeof(*tcal));

 tcal->min_fcr = UINT64_MAX;
}
