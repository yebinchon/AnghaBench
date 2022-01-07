
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time {int have_tsc; unsigned long long fc; scalar_t__ lost_cyc; scalar_t__ lost_mtc; scalar_t__ ctc; int base; int tsc; scalar_t__ have_mtc; scalar_t__ have_tma; } ;
struct pt_packet_tsc {int tsc; } ;
struct pt_config {int dummy; } ;


 int pte_internal ;

int pt_time_update_tsc(struct pt_time *time,
         const struct pt_packet_tsc *packet,
         const struct pt_config *config)
{
 (void) config;

 if (!time || !packet)
  return -pte_internal;

 time->have_tsc = 1;
 time->have_tma = 0;
 time->have_mtc = 0;
 time->tsc = time->base = packet->tsc;
 time->ctc = 0;
 time->fc = 0ull;


 time->lost_mtc = 0;
 time->lost_cyc = 0;

 return 0;
}
