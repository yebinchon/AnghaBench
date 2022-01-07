
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ vmcs; } ;
struct TYPE_5__ {scalar_t__ base; } ;
struct TYPE_6__ {TYPE_1__ vmcs; } ;
struct TYPE_7__ {TYPE_2__ variant; } ;
struct pt_insn_decoder {TYPE_4__ asid; int scache; TYPE_3__ event; } ;


 int pt_msec_cache_invalidate (int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_insn_process_vmcs(struct pt_insn_decoder *decoder)
{
 uint64_t vmcs;
 int errcode;

 if (!decoder)
  return -pte_internal;

 vmcs = decoder->event.variant.vmcs.base;
 if (decoder->asid.vmcs != vmcs) {
  errcode = pt_msec_cache_invalidate(&decoder->scache);
  if (errcode < 0)
   return errcode;

  decoder->asid.vmcs = vmcs;
 }

 return 0;
}
