
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
struct pt_packet_cyc {int value; } ;
struct pt_config {int* end; } ;


 int pt_opm_cyc_ext ;
 int pt_opm_cyc_shr ;
 int pt_opm_cycx_ext ;
 int pt_opm_cycx_shr ;
 int pte_bad_packet ;
 int pte_eos ;
 int pte_internal ;

int pt_pkt_read_cyc(struct pt_packet_cyc *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 const uint8_t *begin, *end;
 uint64_t value;
 uint8_t cyc, ext, shl;

 if (!packet || !pos || !config)
  return -pte_internal;

 begin = pos;
 end = config->end;




 cyc = *pos++;

 ext = cyc & pt_opm_cyc_ext;
 cyc >>= pt_opm_cyc_shr;

 value = cyc;
 shl = (8 - pt_opm_cyc_shr);

 while (ext) {
  uint64_t bits;

  if (end <= pos)
   return -pte_eos;

  bits = *pos++;
  ext = bits & pt_opm_cycx_ext;

  bits >>= pt_opm_cycx_shr;
  bits <<= shl;

  shl += (8 - pt_opm_cycx_shr);
  if (sizeof(value) * 8 < shl)
   return -pte_bad_packet;

  value |= bits;
 }

 packet->value = value;

 return (int) (pos - begin);
}
