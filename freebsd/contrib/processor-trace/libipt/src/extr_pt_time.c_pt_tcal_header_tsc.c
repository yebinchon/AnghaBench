
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_time_cal {scalar_t__ tsc; scalar_t__ cyc_tsc; scalar_t__ have_mtc; } ;
struct pt_packet_tsc {scalar_t__ tsc; } ;
struct pt_config {int dummy; } ;


 unsigned long long pt_pl_tsc_bit_size ;
 unsigned long long pt_tcal_fcr_shr ;
 int pt_tcal_set_fcr (struct pt_time_cal*,scalar_t__) ;
 int pte_bad_packet ;
 int pte_internal ;

int pt_tcal_header_tsc(struct pt_time_cal *tcal,
        const struct pt_packet_tsc *packet,
        const struct pt_config *config)
{
 uint64_t tsc, last_tsc, tsc_delta, cyc, fcr;

 (void) config;

 if (!tcal || !packet)
  return -pte_internal;

 last_tsc = tcal->tsc;
 cyc = tcal->cyc_tsc;

 tsc = packet->tsc;

 tcal->tsc = tsc;
 tcal->cyc_tsc = 0ull;

 if (!last_tsc || !cyc)
  return 0;


 if (tcal->have_mtc)
  return 0;


 if (tsc < last_tsc) {
  tsc += 1ull << pt_pl_tsc_bit_size;

  if (tsc < last_tsc)
   return -pte_bad_packet;
 }

 tsc_delta = tsc - last_tsc;






 if (tsc_delta & ~(~0ull >> pt_tcal_fcr_shr))
  return -pte_internal;

 fcr = (tsc_delta << pt_tcal_fcr_shr) / cyc;

 return pt_tcal_set_fcr(tcal, fcr);
}
