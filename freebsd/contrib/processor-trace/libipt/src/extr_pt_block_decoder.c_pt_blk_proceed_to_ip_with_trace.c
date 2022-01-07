
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {int dummy; } ;
struct pt_block_decoder {int dummy; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_to_ip (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_blk_proceed_with_trace (struct pt_block_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pte_bad_query ;

__attribute__((used)) static int pt_blk_proceed_to_ip_with_trace(struct pt_block_decoder *decoder,
        struct pt_block *block,
        uint64_t ip)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int status;






 status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext, ip);
 if (status != -pte_bad_query)
  return status;




 return pt_blk_proceed_with_trace(decoder, &insn, &iext);
}
