
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ enable_tick_events; } ;
struct TYPE_5__ {TYPE_1__ block; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_block_decoder {TYPE_3__ flags; int query; int ip; } ;


 int pt_blk_tick (struct pt_block_decoder*,int ) ;
 int pt_qry_indirect_branch (int *,int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_indirect_branch(struct pt_block_decoder *decoder,
      uint64_t *ip)
{
 uint64_t evip;
 int status, errcode;

 if (!decoder)
  return -pte_internal;

 evip = decoder->ip;

 status = pt_qry_indirect_branch(&decoder->query, ip);
 if (status < 0)
  return status;

 if (decoder->flags.variant.block.enable_tick_events) {
  errcode = pt_blk_tick(decoder, evip);
  if (errcode < 0)
   return errcode;
 }

 return status;
}
