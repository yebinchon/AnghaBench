
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef unsigned int uint32_t ;
struct pt_time {int have_tma; int have_mtc; unsigned int ctc; unsigned int ctc_cyc; int fc; int base; int have_tsc; } ;
struct pt_packet_tma {unsigned int ctc; scalar_t__ fc; } ;
struct pt_config {unsigned int mtc_freq; } ;


 unsigned int pt_pl_mtc_bit_size ;
 unsigned int pt_pl_tma_ctc_bit_size ;
 int pte_bad_context ;
 int pte_internal ;

int pt_time_update_tma(struct pt_time *time,
         const struct pt_packet_tma *packet,
         const struct pt_config *config)
{
 uint32_t ctc, mtc_freq, mtc_hi, ctc_mask;
 uint64_t fc;

 if (!time || !packet || !config)
  return -pte_internal;


 if (!time->have_tsc)
  return -pte_bad_context;


 if (time->have_tma)
  return -pte_bad_context;


 if (time->have_mtc)
  return -pte_internal;

 ctc = packet->ctc;
 fc = packet->fc;

 mtc_freq = config->mtc_freq;
 mtc_hi = mtc_freq + pt_pl_mtc_bit_size;




 ctc_mask = (1u << mtc_hi) - 1u;

 time->have_tma = 1;
 time->base -= fc;
 time->fc += fc;
 if (mtc_hi <= pt_pl_tma_ctc_bit_size)
  time->have_mtc = 1;


 time->ctc = time->ctc_cyc = ctc & ctc_mask;

 return 0;
}
