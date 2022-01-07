
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {scalar_t__ iclass; } ;
struct pt_conf_addr_filter {int dummy; } ;
struct TYPE_8__ {scalar_t__ end_on_jump; scalar_t__ end_on_call; } ;
struct TYPE_9__ {TYPE_3__ block; } ;
struct TYPE_10__ {TYPE_4__ variant; } ;
struct TYPE_6__ {struct pt_conf_addr_filter addr_filter; } ;
struct TYPE_7__ {TYPE_1__ config; } ;
struct pt_block_decoder {TYPE_5__ flags; int ip; TYPE_2__ query; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_to_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_filter_addr_check (struct pt_conf_addr_filter const*,int ) ;
 scalar_t__ pt_insn_changes_cr3 (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_next_ip (int *,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_skl014 ;
 int pte_internal ;
 scalar_t__ ptic_call ;
 scalar_t__ ptic_jump ;

__attribute__((used)) static int pt_blk_proceed_skl014(struct pt_block_decoder *decoder,
     struct pt_block *block, struct pt_insn *insn,
     struct pt_insn_ext *iext)
{
 const struct pt_conf_addr_filter *addr_filter;
 int status;

 if (!decoder || !block || !insn || !iext)
  return -pte_internal;

 addr_filter = &decoder->query.config.addr_filter;
 for (;;) {
  uint64_t ip;

  status = pt_blk_proceed_to_insn(decoder, block, insn, iext,
      pt_insn_skl014);
  if (status <= 0)
   break;




  if (pt_insn_changes_cr3(insn, iext))
   break;


  status = pt_insn_next_ip(&ip, insn, iext);
  if (status < 0)
   break;

  status = pt_filter_addr_check(addr_filter, ip);
  if (status <= 0) {





   if (!status)
    status = 1;

   break;
  }




  decoder->ip = ip;







  if ((decoder->flags.variant.block.end_on_call &&
      (insn->iclass == ptic_call)) ||
      (decoder->flags.variant.block.end_on_jump &&
      (insn->iclass == ptic_jump)))
   break;
 }

 return status;
}
