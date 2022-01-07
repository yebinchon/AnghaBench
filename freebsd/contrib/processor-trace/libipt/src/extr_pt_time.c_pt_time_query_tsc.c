
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pt_time {int have_tsc; int lost_cyc; int lost_mtc; int tsc; } ;


 int pte_internal ;
 int pte_no_time ;

int pt_time_query_tsc(uint64_t *tsc, uint32_t *lost_mtc,
        uint32_t *lost_cyc, const struct pt_time *time)
{
 if (!tsc || !time)
  return -pte_internal;

 *tsc = time->tsc;

 if (lost_mtc)
  *lost_mtc = time->lost_mtc;
 if (lost_cyc)
  *lost_cyc = time->lost_cyc;

 if (!time->have_tsc)
  return -pte_no_time;

 return 0;
}
