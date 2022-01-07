
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_time {scalar_t__ ctc_cyc; scalar_t__ ctc; } ;
struct pt_config {int dummy; } ;


 int pt_tcal_fcr_shr ;
 int pt_time_ctc_delta (scalar_t__*,scalar_t__,scalar_t__,struct pt_config const*) ;
 int pt_time_ctc_fc (int*,scalar_t__,struct pt_config const*) ;
 int pte_internal ;

__attribute__((used)) static int pt_time_adjust_cyc(uint64_t *cyc, const struct pt_time *time,
         const struct pt_config *config, uint64_t fcr)
{
 uint32_t last_ctc, ctc, ctc_delta;
 uint64_t fc, total_cyc, old_cyc;
 int errcode;

 if (!time || !config || !fcr)
  return -pte_internal;

 last_ctc = time->ctc_cyc;
 ctc = time->ctc;


 if (ctc == last_ctc)
  return 0;
 errcode = pt_time_ctc_delta(&ctc_delta, ctc, last_ctc, config);
 if (errcode < 0)
  return errcode;

 errcode = pt_time_ctc_fc(&fc, ctc_delta, config);
 if (errcode < 0)
  return errcode;

 old_cyc = (fc << pt_tcal_fcr_shr) / fcr;
 total_cyc = *cyc;







 if (total_cyc < old_cyc)
  total_cyc = old_cyc;

 *cyc = total_cyc - old_cyc;
 return 0;
}
