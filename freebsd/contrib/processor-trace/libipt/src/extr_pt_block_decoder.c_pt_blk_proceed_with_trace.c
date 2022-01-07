
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int dummy; } ;
struct pt_insn {int dummy; } ;
struct pt_block_decoder {int status; int ip; } ;


 int pt_blk_next_ip (int *,struct pt_block_decoder*,struct pt_insn const*,struct pt_insn_ext const*) ;
 int pte_internal ;
 int pte_noip ;
 int pts_ip_suppressed ;

__attribute__((used)) static int pt_blk_proceed_with_trace(struct pt_block_decoder *decoder,
         const struct pt_insn *insn,
         const struct pt_insn_ext *iext)
{
 int status;

 if (!decoder)
  return -pte_internal;

 status = pt_blk_next_ip(&decoder->ip, decoder, insn, iext);
 if (status < 0)
  return status;




 decoder->status = status;


 if (status & pts_ip_suppressed)
  return -pte_noip;

 return 0;
}
