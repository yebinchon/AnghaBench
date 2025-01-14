
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ cr3; } ;
struct TYPE_5__ {scalar_t__ cr3; } ;
struct TYPE_6__ {TYPE_1__ paging; } ;
struct TYPE_7__ {TYPE_2__ variant; } ;
struct pt_insn_decoder {TYPE_4__ asid; int scache; TYPE_3__ event; } ;


 int pt_msec_cache_invalidate (int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_insn_process_paging(struct pt_insn_decoder *decoder)
{
 uint64_t cr3;
 int errcode;

 if (!decoder)
  return -pte_internal;

 cr3 = decoder->event.variant.paging.cr3;
 if (decoder->asid.cr3 != cr3) {
  errcode = pt_msec_cache_invalidate(&decoder->scache);
  if (errcode < 0)
   return errcode;

  decoder->asid.cr3 = cr3;
 }

 return 0;
}
