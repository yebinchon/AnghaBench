
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {unsigned long long tsc; unsigned long long cyc_tsc; unsigned long long cyc_mtc; scalar_t__ have_mtc; scalar_t__ ctc; } ;
struct pt_config {int dummy; } ;


 int pte_internal ;

int pt_tcal_update_ovf(struct pt_time_cal *tcal,
         const struct pt_config *config)
{
 if (!tcal || !config)
  return -pte_internal;

 tcal->tsc = 0ull;
 tcal->cyc_tsc = 0ull;
 tcal->cyc_mtc = 0ull;
 tcal->ctc = 0;
 tcal->have_mtc = 0;

 return 0;
}
