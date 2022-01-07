
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_entry_t ;


 scalar_t__ L3_SIZE ;
 int Ln_ENTRIES ;

__attribute__((used)) static void
pmap_fill_l3(pt_entry_t *firstl3, pt_entry_t newl3)
{
 pt_entry_t *l3;

 for (l3 = firstl3; l3 - firstl3 < Ln_ENTRIES; l3++) {
  *l3 = newl3;
  newl3 += L3_SIZE;
 }
}
