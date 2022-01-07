
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct pt_mapped_section {int dummy; } ;
struct TYPE_6__ {int displacement; int is_direct; } ;
struct TYPE_7__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn {scalar_t__ mode; scalar_t__ size; int iclass; scalar_t__ ip; } ;
struct TYPE_8__ {int end_on_jump; } ;
struct TYPE_9__ {TYPE_3__ block; } ;
struct TYPE_10__ {TYPE_4__ variant; } ;
struct pt_block_decoder {TYPE_5__ flags; scalar_t__ ip; } ;
struct pt_block_cache {int dummy; } ;
struct pt_block {scalar_t__ truncated; } ;
struct pt_bcache_entry {int ninsn; scalar_t__ mode; scalar_t__ isize; scalar_t__ displacement; void* qualifier; } ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef int bce ;


 int fallthrough ;
 int memset (struct pt_bcache_entry*,int ,int) ;
 int pt_bcache_add (struct pt_block_cache*,scalar_t__,struct pt_bcache_entry) ;
 int pt_bcache_lookup (struct pt_bcache_entry*,struct pt_block_cache*,scalar_t__) ;
 scalar_t__ pt_bce_exec_mode (struct pt_bcache_entry) ;
 int pt_bce_is_valid (struct pt_bcache_entry) ;
 int pt_blk_add_decode (struct pt_block_cache*,scalar_t__,scalar_t__) ;
 int pt_blk_add_trampoline (struct pt_block_cache*,scalar_t__,scalar_t__,scalar_t__) ;
 int pt_blk_is_in_section (struct pt_mapped_section const*,scalar_t__) ;
 int pt_blk_proceed_one_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_blk_proceed_with_trace (struct pt_block_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_next_ip (scalar_t__*,struct pt_insn*,struct pt_insn_ext*) ;
 scalar_t__ pt_msec_unmap (struct pt_mapped_section const*,scalar_t__) ;
 void* ptbq_cond ;
 void* ptbq_decode ;
 void* ptbq_ind_call ;
 void* ptbq_indirect ;
 void* ptbq_return ;
 int pte_bad_query ;
 int pte_internal ;
__attribute__((used)) static int
pt_blk_proceed_no_event_fill_cache(struct pt_block_decoder *decoder,
       struct pt_block *block,
       struct pt_block_cache *bcache,
       const struct pt_mapped_section *msec,
       size_t steps)
{
 struct pt_bcache_entry bce;
 struct pt_insn_ext iext;
 struct pt_insn insn;
 uint64_t nip, dip, ioff, noff;
 int64_t disp;
 int status;

 if (!decoder || !steps)
  return -pte_internal;






 status = pt_blk_proceed_one_insn(decoder, block, &insn, &iext);
 if (status <= 0)
  return status;

 ioff = pt_msec_unmap(msec, insn.ip);





 status = pt_insn_next_ip(&decoder->ip, &insn, &iext);
 if (status < 0) {
  if (status != -pte_bad_query)
   return status;

  memset(&bce, 0, sizeof(bce));
  bce.ninsn = 1;
  bce.mode = insn.mode;
  bce.isize = insn.size;


  if ((uint8_t) bce.isize != insn.size)
   bce.isize = 0;

  switch (insn.iclass) {
  case 129:
  case 135:
  case 130:
   return -pte_internal;

  case 131:

   if (iext.variant.branch.is_direct)
    return -pte_internal;

   bce.qualifier = ptbq_indirect;
   break;

  case 137:

   if (iext.variant.branch.is_direct)
    return -pte_internal;

   bce.qualifier = ptbq_ind_call;
   break;

  case 128:
   bce.qualifier = ptbq_return;
   break;

  case 136:
   bce.qualifier = ptbq_cond;
   break;

  case 134:
  case 132:
  case 133:
   bce.qualifier = ptbq_indirect;
   break;
  }
  if (block->truncated)
   bce.qualifier = ptbq_decode;

  status = pt_bcache_add(bcache, ioff, bce);
  if (status < 0)
   return status;

  return pt_blk_proceed_with_trace(decoder, &insn, &iext);
 }


 nip = decoder->ip;
 noff = pt_msec_unmap(msec, nip);
 switch (insn.iclass) {
 case 137:
  return pt_blk_add_decode(bcache, ioff, insn.mode);

 case 131:



  if (!iext.variant.branch.is_direct)
   return -pte_internal;

  if (iext.variant.branch.displacement < 0 ||
      decoder->flags.variant.block.end_on_jump)
   return pt_blk_add_decode(bcache, ioff, insn.mode);

  fallthrough;
 default:
  if (!pt_blk_is_in_section(msec, nip) || block->truncated)
   return pt_blk_add_decode(bcache, ioff, insn.mode);

  break;
 }




 status = pt_bcache_lookup(&bce, bcache, noff);
 if (status < 0)
  return status;






 if (!pt_bce_is_valid(bce)) {







  steps -= 1;
  if (!steps)
   return pt_blk_add_trampoline(bcache, ioff, noff,
           insn.mode);

  status = pt_blk_proceed_no_event_fill_cache(decoder, block,
           bcache, msec,
           steps);
  if (status < 0)
   return status;


  status = pt_bcache_lookup(&bce, bcache, noff);
  if (status < 0)
   return status;





  if (!pt_bce_is_valid(bce))
   return 0;
 }





 if (pt_bce_exec_mode(bce) != insn.mode)
  return -pte_internal;


 dip = nip + (uint64_t) (int64_t) bce.displacement;
 disp = (int64_t) (dip - insn.ip);
 if (!pt_blk_is_in_section(msec, dip))
  return 0;






 bce.ninsn += 1;
 bce.displacement = (int32_t) disp;






 if (!bce.ninsn || ((int64_t) bce.displacement != disp))
  return pt_blk_add_trampoline(bcache, ioff, noff, insn.mode);
 return pt_bcache_add(bcache, ioff, bce);
}
