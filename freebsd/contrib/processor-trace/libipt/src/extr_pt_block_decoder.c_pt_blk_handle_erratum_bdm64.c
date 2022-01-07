
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_insn_ext {int dummy; } ;
struct pt_insn {int ip; int mode; } ;
struct TYPE_3__ {int ip; int aborted; } ;
struct TYPE_4__ {TYPE_1__ tsx; } ;
struct pt_event {TYPE_2__ variant; } ;
struct pt_block_decoder {int ip; int asid; int image; int mode; } ;
struct pt_block {int end_ip; int mode; } ;


 int bdm64_max_steps ;
 scalar_t__ pt_blk_block_is_empty (struct pt_block const*) ;
 int pt_insn_decode (struct pt_insn*,struct pt_insn_ext*,int ,int *) ;
 int pt_insn_is_branch (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_range_is_contiguous (int ,int ,int ,int ,int *,int ) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_handle_erratum_bdm64(struct pt_block_decoder *decoder,
           const struct pt_block *block,
           const struct pt_event *ev)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int status;

 if (!decoder || !block || !ev)
  return -pte_internal;


 if (!ev->variant.tsx.aborted)
  return 0;






 if (pt_blk_block_is_empty(block))
  return 0;

 insn.mode = block->mode;
 insn.ip = block->end_ip;

 status = pt_insn_decode(&insn, &iext, decoder->image, &decoder->asid);
 if (status < 0)
  return 0;

 if (!pt_insn_is_branch(&insn, &iext))
  return 0;






 status = pt_insn_range_is_contiguous(decoder->ip, ev->variant.tsx.ip,
          decoder->mode, decoder->image,
          &decoder->asid, bdm64_max_steps);
 if (status > 0)
  return status;







 decoder->ip = ev->variant.tsx.ip;

 return 1;
}
