
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_insn_ext {scalar_t__ isid; int ip; int iclass; int size; int raw; scalar_t__ truncated; int mode; } ;
struct pt_insn {scalar_t__ isid; int ip; int iclass; int size; int raw; scalar_t__ truncated; int mode; } ;
struct pt_block_decoder {int asid; int image; int ip; int mode; } ;
struct pt_block {int truncated; scalar_t__ isid; scalar_t__ ninsn; int end_ip; int iclass; int size; int raw; } ;
typedef int insn ;
typedef int iext ;


 int memcpy (int ,int ,int ) ;
 int memset (struct pt_insn_ext*,int ,int) ;
 int pt_blk_block_is_empty (struct pt_block*) ;
 int pt_blk_log_call (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ;
 int pt_insn_decode (struct pt_insn_ext*,struct pt_insn_ext*,int ,int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_proceed_one_insn(struct pt_block_decoder *decoder,
       struct pt_block *block,
       struct pt_insn *pinsn,
       struct pt_insn_ext *piext)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 uint16_t ninsn;
 int status;

 if (!decoder || !block || !pinsn || !piext)
  return -pte_internal;


 ninsn = block->ninsn + 1;
 if (!ninsn)
  return 0;


 if (block->truncated)
  return 0;

 memset(&insn, 0, sizeof(insn));
 memset(&iext, 0, sizeof(iext));

 insn.mode = decoder->mode;
 insn.ip = decoder->ip;

 status = pt_insn_decode(&insn, &iext, decoder->image, &decoder->asid);
 if (status < 0)
  return status;


 if (insn.isid != block->isid) {
  if (!pt_blk_block_is_empty(block))
   return 0;

  block->isid = insn.isid;
 }




 if (insn.truncated) {
  memcpy(block->raw, insn.raw, insn.size);
  block->size = insn.size;
  block->truncated = 1;
 }


 status = pt_blk_log_call(decoder, &insn, &iext);
 if (status < 0)
  return status;


 block->iclass = insn.iclass;
 block->end_ip = insn.ip;
 block->ninsn = ninsn;

 *pinsn = insn;
 *piext = iext;

 return 1;
}
