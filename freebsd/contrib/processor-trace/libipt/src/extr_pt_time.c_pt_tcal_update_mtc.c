
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned int uint32_t ;
struct pt_time_cal {unsigned int ctc; unsigned int have_mtc; unsigned long long cyc_mtc; unsigned int check_skl168; unsigned long long fcr; scalar_t__ lost_mtc; } ;
struct pt_packet_mtc {scalar_t__ ctc; } ;
struct pt_config {unsigned int mtc_freq; } ;


 unsigned long long pt_tcal_fcr_shr ;
 scalar_t__ pt_tcal_have_fcr (struct pt_time_cal*) ;
 int pt_tcal_set_fcr (struct pt_time_cal*,unsigned long long) ;
 int pt_time_ctc_delta (unsigned int*,unsigned int,unsigned int,struct pt_config const*) ;
 int pt_time_ctc_fc (unsigned long long*,unsigned int,struct pt_config const*) ;
 int pte_internal ;

int pt_tcal_update_mtc(struct pt_time_cal *tcal,
        const struct pt_packet_mtc *packet,
        const struct pt_config *config)
{
 uint32_t last_ctc, ctc, ctc_delta, have_mtc, check_skl168;
 uint64_t cyc, fc, fcr;
 int errcode;

 if (!tcal || !packet || !config)
  return -pte_internal;

 last_ctc = tcal->ctc;
 have_mtc = tcal->have_mtc;
 cyc = tcal->cyc_mtc;
 check_skl168 = tcal->check_skl168;


 tcal->check_skl168 = 0;

 ctc = (uint32_t) packet->ctc << config->mtc_freq;


 if (!have_mtc) {
  tcal->cyc_mtc = 0ull;
  tcal->ctc = ctc;
  tcal->have_mtc = 1;

  return 0;
 }




 if (!cyc)
  return 0;


 tcal->have_mtc = 1;
 tcal->cyc_mtc = 0ull;
 tcal->ctc = ctc;


 tcal->lost_mtc += 1;

 errcode = pt_time_ctc_delta(&ctc_delta, ctc, last_ctc, config);
 if (errcode < 0)
  return errcode;

 errcode = pt_time_ctc_fc(&fc, ctc_delta, config);
 if (errcode < 0)
  return errcode;






 if (fc & ~(~0ull >> pt_tcal_fcr_shr))
  return -pte_internal;

 fcr = (fc << pt_tcal_fcr_shr) / cyc;
 if (check_skl168) {

  if ((1u << config->mtc_freq) < ctc_delta)
   return 0;
  if ((config->mtc_freq < 10) && pt_tcal_have_fcr(tcal)) {
   uint64_t dfc;




   dfc = (tcal->fcr * (cyc + 0xf00)) >> pt_tcal_fcr_shr;





   if (dfc < fc)
    return 0;
  }
 }

 errcode = pt_tcal_set_fcr(tcal, fcr);
 if (errcode < 0)
  return errcode;


 tcal->lost_mtc = 0;

 return 0;
}
