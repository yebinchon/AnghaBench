
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_time {int cbr; int have_cbr; } ;


 int pte_internal ;
 int pte_no_cbr ;

int pt_time_query_cbr(uint32_t *cbr, const struct pt_time *time)
{
 if (!cbr || !time)
  return -pte_internal;

 if (!time->have_cbr)
  return -pte_no_cbr;

 *cbr = time->cbr;

 return 0;
}
