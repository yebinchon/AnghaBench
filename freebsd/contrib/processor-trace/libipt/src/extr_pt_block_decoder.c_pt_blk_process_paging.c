
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ cr3; } ;
struct TYPE_5__ {TYPE_1__ paging; } ;
struct pt_event {TYPE_2__ variant; } ;
struct TYPE_6__ {scalar_t__ cr3; } ;
struct pt_block_decoder {scalar_t__ process_event; TYPE_3__ asid; int scache; } ;


 int pt_msec_cache_invalidate (int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_process_paging(struct pt_block_decoder *decoder,
     const struct pt_event *ev)
{
 uint64_t cr3;
 int errcode;

 if (!decoder || !ev)
  return -pte_internal;

 cr3 = ev->variant.paging.cr3;
 if (decoder->asid.cr3 != cr3) {
  errcode = pt_msec_cache_invalidate(&decoder->scache);
  if (errcode < 0)
   return errcode;

  decoder->asid.cr3 = cr3;
 }

 decoder->process_event = 0;

 return 0;
}
