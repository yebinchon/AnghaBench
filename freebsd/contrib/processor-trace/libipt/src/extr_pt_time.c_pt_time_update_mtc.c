
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct pt_time {int have_tsc; int have_tma; int have_mtc; int ctc; unsigned long long fc; int ctc_cyc; int lost_mtc; scalar_t__ base; scalar_t__ tsc; scalar_t__ lost_cyc; } ;
struct pt_packet_mtc {scalar_t__ ctc; } ;
struct pt_config {int mtc_freq; } ;


 scalar_t__ pt_pl_mtc_mask ;
 unsigned int pt_pl_tma_ctc_bit_size ;
 scalar_t__ pt_pl_tma_ctc_mask ;
 int pt_time_ctc_delta (int*,int,int,struct pt_config const*) ;
 int pt_time_ctc_fc (scalar_t__*,int,struct pt_config const*) ;
 int pte_internal ;

int pt_time_update_mtc(struct pt_time *time,
         const struct pt_packet_mtc *packet,
         const struct pt_config *config)
{
 uint32_t last_ctc, ctc, ctc_delta;
 uint64_t tsc, base;
 uint8_t mtc_freq;
 int errcode, have_tsc, have_tma, have_mtc;

 if (!time || !packet || !config)
  return -pte_internal;

 have_tsc = time->have_tsc;
 have_tma = time->have_tma;
 have_mtc = time->have_mtc;







 if (have_tsc && !have_tma)
  return 0;

 base = time->base;
 last_ctc = time->ctc;
 mtc_freq = config->mtc_freq;

 ctc = (uint32_t) packet->ctc << mtc_freq;


 if (time->fc || time->lost_cyc || !have_mtc)
  time->ctc_cyc = ctc;


 time->have_mtc = 1;
 time->fc = 0ull;
 time->ctc = ctc;


 time->lost_cyc = 0;




 if (!have_mtc) {
  uint32_t ctc_lo, ctc_hi;
  if (!have_tma)
   return 0;




  if (last_ctc & ~(uint32_t) pt_pl_tma_ctc_mask)
   return -pte_internal;




  ctc_lo = ctc & (uint32_t) pt_pl_tma_ctc_mask;
  ctc_hi = ctc & ~(uint32_t) pt_pl_tma_ctc_mask;
  if (ctc_lo < last_ctc) {
   ctc_hi -= 1u << pt_pl_tma_ctc_bit_size;
   ctc_hi &= (uint32_t) pt_pl_mtc_mask << mtc_freq;
  }

  last_ctc |= ctc_hi;
 }

 errcode = pt_time_ctc_delta(&ctc_delta, ctc, last_ctc, config);
 if (errcode < 0) {
  time->lost_mtc += 1;
  return errcode;
 }

 errcode = pt_time_ctc_fc(&tsc, ctc_delta, config);
 if (errcode < 0)
  return errcode;

 base += tsc;
 time->tsc = time->base = base;

 return 0;
}
