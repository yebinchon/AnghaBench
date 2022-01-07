
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ period_factor; int period; } ;


 scalar_t__ nitems (TYPE_1__*) ;
 TYPE_1__* scsi_syncrates ;

u_int
scsi_calc_syncsrate(u_int period_factor)
{
 u_int i;
 u_int num_syncrates;






 if (period_factor == 0) {
  return (3300);
 }

 num_syncrates = nitems(scsi_syncrates);

 for (i = 0; i < num_syncrates; i++) {

  if (period_factor == scsi_syncrates[i].period_factor) {

   return (100000000 / scsi_syncrates[i].period);
  }
 }





 return (10000000 / (period_factor * 4 * 10));
}
