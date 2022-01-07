
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_19__ ;
typedef struct TYPE_28__ TYPE_18__ ;
typedef struct TYPE_27__ TYPE_17__ ;
typedef struct TYPE_26__ TYPE_16__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef unsigned int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_28__ {unsigned int plc; int payload; int ip; } ;
struct TYPE_27__ {int autonomous; int store; int interrupt; int deepest; int last; } ;
struct TYPE_26__ {int hw; int sub_state; int state; } ;
struct TYPE_25__ {int hints; int ext; } ;
struct TYPE_24__ {int ip; } ;
struct TYPE_23__ {int payload; } ;
struct TYPE_22__ {int base; } ;
struct TYPE_21__ {int value; } ;
struct TYPE_20__ {int ctc; } ;
struct TYPE_38__ {int ctc; int fc; } ;
struct TYPE_37__ {int ratio; } ;
struct TYPE_36__ {int tsc; } ;
struct TYPE_35__ {int cr3; int nr; } ;
struct TYPE_32__ {int abrt; int intx; } ;
struct TYPE_31__ {int csd; int csl; } ;
struct TYPE_33__ {TYPE_3__ tsx; TYPE_2__ exec; } ;
struct TYPE_34__ {TYPE_4__ bits; int leaf; } ;
struct TYPE_30__ {int bit_size; unsigned int payload; } ;
struct TYPE_29__ {TYPE_18__ ptw; TYPE_17__ pwrx; TYPE_16__ pwre; TYPE_15__ mwait; TYPE_14__ exstop; TYPE_13__ mnt; TYPE_12__ vmcs; TYPE_11__ cyc; TYPE_10__ mtc; TYPE_9__ tma; TYPE_8__ cbr; TYPE_7__ tsc; TYPE_6__ pip; TYPE_5__ mode; TYPE_1__ tnt; int ip; } ;
struct pt_packet {int type; TYPE_19__ payload; } ;
struct pt_encoder {unsigned int* pos; } ;
 unsigned int* pt_encode_int (unsigned int*,int,int) ;
 int pt_encode_ip (struct pt_encoder*,int ,int *) ;
 int pt_ext2_mnt ;
 int pt_ext_cbr ;
 unsigned int pt_ext_exstop ;
 unsigned int pt_ext_exstop_ip ;
 int pt_ext_ext2 ;
 int pt_ext_mwait ;
 int pt_ext_ovf ;
 int pt_ext_pip ;
 int pt_ext_psbend ;
 unsigned int pt_ext_ptw ;
 int pt_ext_pwre ;
 int pt_ext_pwrx ;
 int pt_ext_stop ;
 int pt_ext_tma ;
 int pt_ext_tnt_64 ;
 int pt_ext_vmcs ;
 unsigned int pt_mob_exec_csd ;
 unsigned int pt_mob_exec_csl ;
 unsigned int pt_mob_tsx_abrt ;
 unsigned int pt_mob_tsx_intx ;


 unsigned int pt_opc_cyc ;
 void* pt_opc_ext ;
 int pt_opc_fup ;
 int pt_opc_mode ;
 int pt_opc_mtc ;
 int pt_opc_pad ;
 int pt_opc_tip ;
 int pt_opc_tip_pgd ;
 int pt_opc_tip_pge ;
 int pt_opc_tsc ;
 int pt_opcs_ptw ;
 unsigned int pt_opm_cyc_ext ;
 int pt_opm_cyc_shr ;
 unsigned int pt_opm_cycx_ext ;
 int pt_opm_cycx_shr ;
 int pt_opm_ptw_ip ;
 unsigned int pt_opm_ptw_pb_shr ;
 unsigned int pt_opm_tnt_8_shr ;
 int pt_pl_cyc_max_size ;
 int pt_pl_mnt_size ;
 int pt_pl_mwait_ext_size ;
 int pt_pl_mwait_hints_size ;
 int pt_pl_pip_nr ;
 int pt_pl_pip_shl ;
 int pt_pl_pip_shr ;
 int pt_pl_pip_size ;
 int pt_pl_pwre_hw_mask ;
 int pt_pl_pwre_size ;
 int pt_pl_pwre_state_mask ;
 int pt_pl_pwre_state_shr ;
 int pt_pl_pwre_sub_state_mask ;
 int pt_pl_pwre_sub_state_shr ;
 int pt_pl_pwrx_deepest_mask ;
 int pt_pl_pwrx_deepest_shr ;
 int pt_pl_pwrx_last_mask ;
 int pt_pl_pwrx_last_shr ;
 int pt_pl_pwrx_size ;
 int pt_pl_pwrx_wr_hw ;
 int pt_pl_pwrx_wr_int ;
 int pt_pl_pwrx_wr_store ;
 int pt_pl_tma_ctc_size ;
 int pt_pl_tma_fc_mask ;
 int pt_pl_tma_fc_size ;
 unsigned int pt_pl_tnt_64_bits ;
 int pt_pl_tnt_64_size ;
 int pt_pl_tsc_size ;
 int pt_pl_vmcs_shl ;
 int pt_pl_vmcs_size ;
 int pt_psb_hilo ;
 int pt_ptw_size (unsigned int) ;
 int pt_reserve (struct pt_encoder*,unsigned int) ;
 int pte_bad_opc ;
 int pte_bad_packet ;
 int pte_invalid ;
 unsigned int ptps_cbr ;
 unsigned int ptps_exstop ;
 unsigned int ptps_mnt ;
 unsigned int ptps_mode ;
 unsigned int ptps_mtc ;
 unsigned int ptps_mwait ;
 unsigned int ptps_ovf ;
 unsigned int ptps_pad ;
 unsigned int ptps_pip ;
 unsigned int ptps_psb ;
 unsigned int ptps_psbend ;
 unsigned int ptps_pwre ;
 unsigned int ptps_pwrx ;
 unsigned int ptps_stop ;
 unsigned int ptps_tma ;
 unsigned int ptps_tnt_64 ;
 unsigned int ptps_tnt_8 ;
 unsigned int ptps_tsc ;
 unsigned int ptps_vmcs ;

int pt_enc_next(struct pt_encoder *encoder, const struct pt_packet *packet)
{
 uint8_t *pos, *begin;
 int errcode;

 if (!encoder || !packet)
  return -pte_invalid;

 pos = begin = encoder->pos;
 switch (packet->type) {
 case 146:
  errcode = pt_reserve(encoder, ptps_pad);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_pad;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 144: {
  uint64_t psb;

  errcode = pt_reserve(encoder, ptps_psb);
  if (errcode < 0)
   return errcode;

  psb = ((uint64_t) pt_psb_hilo << 48 |
         (uint64_t) pt_psb_hilo << 32 |
         (uint64_t) pt_psb_hilo << 16 |
         (uint64_t) pt_psb_hilo);

  pos = pt_encode_int(pos, psb, 8);
  pos = pt_encode_int(pos, psb, 8);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 143:
  errcode = pt_reserve(encoder, ptps_psbend);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_psbend;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 147:
  errcode = pt_reserve(encoder, ptps_ovf);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_ovf;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 153:
  return pt_encode_ip(encoder, pt_opc_fup, &packet->payload.ip);

 case 138:
  return pt_encode_ip(encoder, pt_opc_tip, &packet->payload.ip);

 case 136:
  return pt_encode_ip(encoder, pt_opc_tip_pge,
        &packet->payload.ip);

 case 137:
  return pt_encode_ip(encoder, pt_opc_tip_pgd,
        &packet->payload.ip);

 case 133: {
  uint8_t opc, stop;

  if (packet->payload.tnt.bit_size >= 7)
   return -pte_bad_packet;

  errcode = pt_reserve(encoder, ptps_tnt_8);
  if (errcode < 0)
   return errcode;

  stop = packet->payload.tnt.bit_size + pt_opm_tnt_8_shr;
  opc = (uint8_t)
   (packet->payload.tnt.payload << pt_opm_tnt_8_shr);

  *pos++ = (uint8_t) (opc | (1u << stop));

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 134: {
  uint64_t tnt, stop;

  errcode = pt_reserve(encoder, ptps_tnt_64);
  if (errcode < 0)
   return errcode;

  if (packet->payload.tnt.bit_size >= pt_pl_tnt_64_bits)
   return -pte_invalid;

  stop = 1ull << packet->payload.tnt.bit_size;
  tnt = packet->payload.tnt.payload;

  if (tnt & ~(stop - 1))
   return -pte_invalid;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_tnt_64;
  pos = pt_encode_int(pos, tnt | stop, pt_pl_tnt_64_size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 150: {
  uint8_t mode;

  errcode = pt_reserve(encoder, ptps_mode);
  if (errcode < 0)
   return errcode;

  switch (packet->payload.mode.leaf) {
  default:
   return -pte_bad_packet;

  case 129:
   mode = 129;

   if (packet->payload.mode.bits.exec.csl)
    mode |= pt_mob_exec_csl;

   if (packet->payload.mode.bits.exec.csd)
    mode |= pt_mob_exec_csd;
   break;

  case 128:
   mode = 128;

   if (packet->payload.mode.bits.tsx.intx)
    mode |= pt_mob_tsx_intx;

   if (packet->payload.mode.bits.tsx.abrt)
    mode |= pt_mob_tsx_abrt;
   break;
  }

  *pos++ = pt_opc_mode;
  *pos++ = mode;

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 145: {
  uint64_t cr3;

  errcode = pt_reserve(encoder, ptps_pip);
  if (errcode < 0)
   return errcode;

  cr3 = packet->payload.pip.cr3;
  cr3 >>= pt_pl_pip_shl;
  cr3 <<= pt_pl_pip_shr;

  if (packet->payload.pip.nr)
   cr3 |= (uint64_t) pt_pl_pip_nr;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_pip;
  pos = pt_encode_int(pos, cr3, pt_pl_pip_size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 132:
  errcode = pt_reserve(encoder, ptps_tsc);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_tsc;
  pos = pt_encode_int(pos, packet->payload.tsc.tsc,
        pt_pl_tsc_size);

  encoder->pos = pos;
  return (int) (pos - begin);

 case 156:
  errcode = pt_reserve(encoder, ptps_cbr);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_cbr;
  *pos++ = packet->payload.cbr.ratio;
  *pos++ = 0;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 135: {
  uint16_t ctc, fc;

  errcode = pt_reserve(encoder, ptps_tma);
  if (errcode < 0)
   return errcode;

  ctc = packet->payload.tma.ctc;
  fc = packet->payload.tma.fc;

  if (fc & ~pt_pl_tma_fc_mask)
   return -pte_bad_packet;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_tma;
  pos = pt_encode_int(pos, ctc, pt_pl_tma_ctc_size);
  *pos++ = 0;
  pos = pt_encode_int(pos, fc, pt_pl_tma_fc_size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 149:
  errcode = pt_reserve(encoder, ptps_mtc);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_mtc;
  *pos++ = packet->payload.mtc.ctc;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 155: {
  uint8_t byte[pt_pl_cyc_max_size], index, end;
  uint64_t ctc;

  ctc = (uint8_t) packet->payload.cyc.value;
  ctc <<= pt_opm_cyc_shr;

  byte[0] = pt_opc_cyc;
  byte[0] |= (uint8_t) ctc;

  ctc = packet->payload.cyc.value;
  ctc >>= (8 - pt_opm_cyc_shr);
  if (ctc)
   byte[0] |= pt_opm_cyc_ext;

  for (end = 1; ctc; ++end) {

   if (pt_pl_cyc_max_size <= end)
    return -pte_bad_packet;

   ctc <<= pt_opm_cycx_shr;

   byte[end] = (uint8_t) ctc;

   ctc >>= 8;
   if (ctc)
    byte[end] |= pt_opm_cycx_ext;
  }

  errcode = pt_reserve(encoder, end);
  if (errcode < 0)
   return errcode;

  for (index = 0; index < end; ++index)
   *pos++ = byte[index];

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 139:
  errcode = pt_reserve(encoder, ptps_stop);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_stop;

  encoder->pos = pos;
  return (int) (pos - begin);

 case 130:
  errcode = pt_reserve(encoder, ptps_vmcs);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_vmcs;
  pos = pt_encode_int(pos,
        packet->payload.vmcs.base >> pt_pl_vmcs_shl,
        pt_pl_vmcs_size);

  encoder->pos = pos;
  return (int) (pos - begin);

 case 151:
  errcode = pt_reserve(encoder, ptps_mnt);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_ext2;
  *pos++ = pt_ext2_mnt;
  pos = pt_encode_int(pos, packet->payload.mnt.payload,
        pt_pl_mnt_size);

  encoder->pos = pos;
  return (int) (pos - begin);

 case 154: {
  uint8_t ext;

  errcode = pt_reserve(encoder, ptps_exstop);
  if (errcode < 0)
   return errcode;

  ext = packet->payload.exstop.ip ?
   pt_ext_exstop_ip : pt_ext_exstop;

  *pos++ = pt_opc_ext;
  *pos++ = ext;

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 148:
  errcode = pt_reserve(encoder, ptps_mwait);
  if (errcode < 0)
   return errcode;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_mwait;
  pos = pt_encode_int(pos, packet->payload.mwait.hints,
        pt_pl_mwait_hints_size);
  pos = pt_encode_int(pos, packet->payload.mwait.ext,
        pt_pl_mwait_ext_size);

  encoder->pos = pos;
  return (int) (pos - begin);

 case 141: {
  uint64_t payload;

  errcode = pt_reserve(encoder, ptps_pwre);
  if (errcode < 0)
   return errcode;

  payload = 0ull;
  payload |= ((uint64_t) packet->payload.pwre.state <<
       pt_pl_pwre_state_shr) &
   (uint64_t) pt_pl_pwre_state_mask;
  payload |= ((uint64_t) packet->payload.pwre.sub_state <<
       pt_pl_pwre_sub_state_shr) &
   (uint64_t) pt_pl_pwre_sub_state_mask;

  if (packet->payload.pwre.hw)
   payload |= (uint64_t) pt_pl_pwre_hw_mask;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_pwre;
  pos = pt_encode_int(pos, payload, pt_pl_pwre_size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 140: {
  uint64_t payload;

  errcode = pt_reserve(encoder, ptps_pwrx);
  if (errcode < 0)
   return errcode;

  payload = 0ull;
  payload |= ((uint64_t) packet->payload.pwrx.last <<
       pt_pl_pwrx_last_shr) &
   (uint64_t) pt_pl_pwrx_last_mask;
  payload |= ((uint64_t) packet->payload.pwrx.deepest <<
       pt_pl_pwrx_deepest_shr) &
   (uint64_t) pt_pl_pwrx_deepest_mask;

  if (packet->payload.pwrx.interrupt)
   payload |= (uint64_t) pt_pl_pwrx_wr_int;
  if (packet->payload.pwrx.store)
   payload |= (uint64_t) pt_pl_pwrx_wr_store;
  if (packet->payload.pwrx.autonomous)
   payload |= (uint64_t) pt_pl_pwrx_wr_hw;

  *pos++ = pt_opc_ext;
  *pos++ = pt_ext_pwrx;
  pos = pt_encode_int(pos, payload, pt_pl_pwrx_size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 142: {
  uint8_t plc, ext;
  int size;

  plc = packet->payload.ptw.plc;

  size = pt_ptw_size(plc);
  if (size < 0)
   return size;

  errcode = pt_reserve(encoder,
         (unsigned int) (pt_opcs_ptw + size));
  if (errcode < 0)
   return errcode;

  ext = pt_ext_ptw;
  ext |= plc << pt_opm_ptw_pb_shr;

  if (packet->payload.ptw.ip)
   ext |= (uint8_t) pt_opm_ptw_ip;

  *pos++ = pt_opc_ext;
  *pos++ = ext;
  pos = pt_encode_int(pos, packet->payload.ptw.payload, size);

  encoder->pos = pos;
  return (int) (pos - begin);
 }

 case 131:
 case 152:
  return -pte_bad_opc;
 }

 return -pte_bad_opc;
}
