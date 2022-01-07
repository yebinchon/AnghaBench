
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ ddr_type; scalar_t__ ddr_last; scalar_t__ ddr_first; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; } ;


 int ASSERT (int) ;
 scalar_t__ DDR_FREE ;
 scalar_t__ write_record (struct diffarg*) ;

__attribute__((used)) static int
report_free_dnode_range(struct diffarg *da, uint64_t first, uint64_t last)
{
 ASSERT(first <= last);
 if (da->da_ddr.ddr_type != DDR_FREE ||
     first != da->da_ddr.ddr_last + 1) {
  if (write_record(da) != 0)
   return (da->da_err);
  da->da_ddr.ddr_type = DDR_FREE;
  da->da_ddr.ddr_first = first;
  da->da_ddr.ddr_last = last;
  return (0);
 }
 da->da_ddr.ddr_last = last;
 return (0);
}
