
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ enable_tick_events; } ;
struct TYPE_5__ {TYPE_1__ block; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_block_decoder {int ip; TYPE_3__ flags; int query; } ;


 int pt_blk_tick (struct pt_block_decoder*,int ) ;
 int pt_qry_cond_branch (int *,int*) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_cond_branch(struct pt_block_decoder *decoder, int *taken)
{
 int status, errcode;

 if (!decoder)
  return -pte_internal;

 status = pt_qry_cond_branch(&decoder->query, taken);
 if (status < 0)
  return status;

 if (decoder->flags.variant.block.enable_tick_events) {
  errcode = pt_blk_tick(decoder, decoder->ip);
  if (errcode < 0)
   return errcode;
 }

 return status;
}
