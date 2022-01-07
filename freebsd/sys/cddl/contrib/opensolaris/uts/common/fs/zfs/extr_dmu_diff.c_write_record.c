
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ddr_type; } ;
struct diffarg {int da_err; int* da_offp; TYPE_1__ da_ddr; } ;


 scalar_t__ DDR_NONE ;
 int write_bytes (struct diffarg*) ;

__attribute__((used)) static int
write_record(struct diffarg *da)
{

 if (da->da_ddr.ddr_type == DDR_NONE) {
  da->da_err = 0;
  return (0);
 }

 da->da_err = write_bytes(da);
 *da->da_offp += sizeof (da->da_ddr);
 return (da->da_err);
}
