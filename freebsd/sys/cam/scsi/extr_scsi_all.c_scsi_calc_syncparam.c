
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ period; scalar_t__ period_factor; } ;


 scalar_t__ nitems (TYPE_1__*) ;
 TYPE_1__* scsi_syncrates ;

u_int
scsi_calc_syncparam(u_int period)
{
 u_int i;
 u_int num_syncrates;

 if (period == 0)
  return (~0);


 period *= 10;
 num_syncrates = nitems(scsi_syncrates);

 for (i = 0; i < num_syncrates; i++) {

  if (period <= scsi_syncrates[i].period) {

   return (scsi_syncrates[i].period_factor);
  }
 }





 return (period/400);
}
