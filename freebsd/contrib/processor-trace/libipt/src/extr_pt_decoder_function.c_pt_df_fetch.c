
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_decoder_function {int dummy; } ;
struct pt_config {int* begin; int* end; } ;


 struct pt_decoder_function pt_decode_cbr ;
 struct pt_decoder_function pt_decode_cyc ;
 struct pt_decoder_function pt_decode_exstop ;
 struct pt_decoder_function pt_decode_fup ;
 struct pt_decoder_function pt_decode_mnt ;
 struct pt_decoder_function pt_decode_mode ;
 struct pt_decoder_function pt_decode_mtc ;
 struct pt_decoder_function pt_decode_mwait ;
 struct pt_decoder_function pt_decode_ovf ;
 struct pt_decoder_function pt_decode_pad ;
 struct pt_decoder_function pt_decode_pip ;
 struct pt_decoder_function pt_decode_psb ;
 struct pt_decoder_function pt_decode_psbend ;
 struct pt_decoder_function pt_decode_ptw ;
 struct pt_decoder_function pt_decode_pwre ;
 struct pt_decoder_function pt_decode_pwrx ;
 struct pt_decoder_function pt_decode_stop ;
 struct pt_decoder_function pt_decode_tip ;
 struct pt_decoder_function pt_decode_tip_pgd ;
 struct pt_decoder_function pt_decode_tip_pge ;
 struct pt_decoder_function pt_decode_tma ;
 struct pt_decoder_function pt_decode_tnt_64 ;
 struct pt_decoder_function pt_decode_tnt_8 ;
 struct pt_decoder_function pt_decode_tsc ;
 struct pt_decoder_function pt_decode_unknown ;
 struct pt_decoder_function pt_decode_vmcs ;
 int pt_ext_ptw ;






 int pt_opc_cyc ;

 int pt_opc_fup ;



 int pt_opc_tip ;
 int pt_opc_tip_pgd ;
 int pt_opc_tip_pge ;
 int pt_opc_tnt_8 ;

 int pt_opm_cyc ;
 int pt_opm_fup ;
 int pt_opm_ptw ;
 int pt_opm_tip ;
 int pt_opm_tnt_8 ;
 int pte_eos ;
 int pte_internal ;
 int pte_nosync ;

int pt_df_fetch(const struct pt_decoder_function **dfun, const uint8_t *pos,
  const struct pt_config *config)
{
 const uint8_t *begin, *end;
 uint8_t opc, ext, ext2;

 if (!dfun || !config)
  return -pte_internal;


 *dfun = ((void*)0);

 begin = config->begin;
 end = config->end;

 if (!pos || (pos < begin) || (end < pos))
  return -pte_nosync;

 if (pos == end)
  return -pte_eos;

 opc = *pos++;
 switch (opc) {
 default:

  if ((opc & pt_opm_tnt_8) == pt_opc_tnt_8) {
   *dfun = &pt_decode_tnt_8;
   return 0;
  }

  if ((opc & pt_opm_cyc) == pt_opc_cyc) {
   *dfun = &pt_decode_cyc;
   return 0;
  }

  if ((opc & pt_opm_tip) == pt_opc_tip) {
   *dfun = &pt_decode_tip;
   return 0;
  }

  if ((opc & pt_opm_fup) == pt_opc_fup) {
   *dfun = &pt_decode_fup;
   return 0;
  }

  if ((opc & pt_opm_tip) == pt_opc_tip_pge) {
   *dfun = &pt_decode_tip_pge;
   return 0;
  }

  if ((opc & pt_opm_tip) == pt_opc_tip_pgd) {
   *dfun = &pt_decode_tip_pgd;
   return 0;
  }

  *dfun = &pt_decode_unknown;
  return 0;

 case 129:
  *dfun = &pt_decode_pad;
  return 0;

 case 131:
  *dfun = &pt_decode_mode;
  return 0;

 case 128:
  *dfun = &pt_decode_tsc;
  return 0;

 case 130:
  *dfun = &pt_decode_mtc;
  return 0;

 case 132:
  if (pos == end)
   return -pte_eos;

  ext = *pos++;
  switch (ext) {
  default:

   if ((ext & pt_opm_ptw) == pt_ext_ptw) {
    *dfun = &pt_decode_ptw;
    return 0;
   }

   *dfun = &pt_decode_unknown;
   return 0;

  case 140:
   *dfun = &pt_decode_psb;
   return 0;

  case 142:
   *dfun = &pt_decode_ovf;
   return 0;

  case 134:
   *dfun = &pt_decode_tnt_64;
   return 0;

  case 139:
   *dfun = &pt_decode_psbend;
   return 0;

  case 147:
   *dfun = &pt_decode_cbr;
   return 0;

  case 141:
   *dfun = &pt_decode_pip;
   return 0;

  case 135:
   *dfun = &pt_decode_tma;
   return 0;

  case 136:
   *dfun = &pt_decode_stop;
   return 0;

  case 133:
   *dfun = &pt_decode_vmcs;
   return 0;

  case 146:
  case 145:
   *dfun = &pt_decode_exstop;
   return 0;

  case 143:
   *dfun = &pt_decode_mwait;
   return 0;

  case 138:
   *dfun = &pt_decode_pwre;
   return 0;

  case 137:
   *dfun = &pt_decode_pwrx;
   return 0;

  case 144:
   if (pos == end)
    return -pte_eos;

   ext2 = *pos++;
   switch (ext2) {
   default:
    *dfun = &pt_decode_unknown;
    return 0;

   case 148:
    *dfun = &pt_decode_mnt;
    return 0;
   }
  }
 }
}
