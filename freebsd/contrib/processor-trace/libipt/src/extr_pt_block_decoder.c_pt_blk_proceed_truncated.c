
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int size; int iclass; int raw; int truncated; int ip; int mode; } ;
struct pt_insn {int size; int iclass; int raw; int truncated; int ip; int mode; } ;
struct pt_block_decoder {int ip; int asid; int image; int mode; } ;
struct pt_block {int truncated; int size; int iclass; int raw; } ;
typedef int insn ;
typedef int iext ;


 int memcpy (int ,int ,int ) ;
 int memset (struct pt_insn_ext*,int ,int) ;
 int pt_blk_log_call (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ;
 int pt_blk_proceed_with_trace (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ;
 int pt_insn_decode (struct pt_insn_ext*,struct pt_insn_ext*,int ,int *) ;
 int pt_insn_next_ip (int *,struct pt_insn_ext*,struct pt_insn_ext*) ;
 int pte_bad_query ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_proceed_truncated(struct pt_block_decoder *decoder,
        struct pt_block *block)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int errcode;

 if (!decoder || !block)
  return -pte_internal;

 memset(&iext, 0, sizeof(iext));
 memset(&insn, 0, sizeof(insn));

 insn.mode = decoder->mode;
 insn.ip = decoder->ip;

 errcode = pt_insn_decode(&insn, &iext, decoder->image, &decoder->asid);
 if (errcode < 0)
  return errcode;


 if (!insn.truncated)
  return -pte_internal;


 memcpy(block->raw, insn.raw, insn.size);
 block->iclass = insn.iclass;
 block->size = insn.size;
 block->truncated = 1;


 errcode = pt_blk_log_call(decoder, &insn, &iext);
 if (errcode < 0)
  return errcode;






 errcode = pt_insn_next_ip(&decoder->ip, &insn, &iext);
 if (errcode < 0) {
  if (errcode != -pte_bad_query)
   return errcode;

  return pt_blk_proceed_with_trace(decoder, &insn, &iext);
 }

 return 0;
}
