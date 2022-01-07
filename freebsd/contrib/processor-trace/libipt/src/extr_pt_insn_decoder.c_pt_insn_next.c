
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_mapped_section {int dummy; } ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn_decoder {int status; int mode; int ip; scalar_t__ speculative; int enabled; } ;
struct pt_insn {int speculative; int isid; int mode; int ip; } ;
typedef int insn ;


 int insn_to_user (struct pt_insn*,size_t,struct pt_insn*) ;
 int memset (struct pt_insn*,int ,int) ;
 int pt_insn_check_insn_event (struct pt_insn_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_check_ip_event (struct pt_insn_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_decode_cached (struct pt_insn_decoder*,struct pt_mapped_section const*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_msec_lookup (struct pt_insn_decoder*,struct pt_mapped_section const**) ;
 int pt_insn_proceed (struct pt_insn_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pte_eos ;
 int pte_invalid ;
 int pte_no_enable ;
 int pte_nomap ;
 int pts_eos ;
 int pts_event_pending ;

int pt_insn_next(struct pt_insn_decoder *decoder, struct pt_insn *uinsn,
   size_t size)
{
 const struct pt_mapped_section *msec;
 struct pt_insn_ext iext;
 struct pt_insn insn, *pinsn;
 int status, isid;

 if (!uinsn || !decoder)
  return -pte_invalid;






 if (!decoder->enabled) {
  if (decoder->status & pts_eos)
   return -pte_eos;

  return -pte_no_enable;
 }

 pinsn = size == sizeof(insn) ? uinsn : &insn;


 memset(pinsn, 0, sizeof(*pinsn));






 if (decoder->speculative)
  pinsn->speculative = 1;
 pinsn->ip = decoder->ip;
 pinsn->mode = decoder->mode;

 isid = pt_insn_msec_lookup(decoder, &msec);
 if (isid < 0) {
  if (isid != -pte_nomap)
   return isid;

  msec = ((void*)0);
 }




 pinsn->isid = isid;

 status = pt_insn_decode_cached(decoder, msec, pinsn, &iext);
 if (status < 0) {



  (void) insn_to_user(uinsn, size, pinsn);
  return status;
 }




 status = insn_to_user(uinsn, size, pinsn);
 if (status < 0)
  return status;





 status = pt_insn_check_insn_event(decoder, pinsn, &iext);
 if (status != 0) {
  if (status < 0)
   return status;

  if (status & pts_event_pending)
   return status;
 }


 status = pt_insn_proceed(decoder, pinsn, &iext);
 if (status < 0)
  return status;






 return pt_insn_check_ip_event(decoder, pinsn, &iext);
}
