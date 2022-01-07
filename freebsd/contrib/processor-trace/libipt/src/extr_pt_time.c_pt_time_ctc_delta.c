
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pt_config {unsigned int mtc_freq; } ;


 unsigned int pt_pl_mtc_bit_size ;
 int pte_bad_packet ;
 int pte_internal ;

__attribute__((used)) static int pt_time_ctc_delta(uint32_t *ctc_delta, uint32_t ctc,
        uint32_t last_ctc, const struct pt_config *config)
{
 if (!config || !ctc_delta)
  return -pte_internal;




 if (ctc < last_ctc) {
  ctc += 1u << (config->mtc_freq + pt_pl_mtc_bit_size);




  if (ctc < last_ctc)
   return -pte_bad_packet;
 }

 *ctc_delta = ctc - last_ctc;
 return 0;
}
