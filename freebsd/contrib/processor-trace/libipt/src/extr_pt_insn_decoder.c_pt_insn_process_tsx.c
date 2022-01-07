
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int speculative; } ;
struct TYPE_5__ {TYPE_1__ tsx; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_insn_decoder {TYPE_3__ event; int speculative; } ;


 int pte_internal ;

__attribute__((used)) static int pt_insn_process_tsx(struct pt_insn_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 decoder->speculative = decoder->event.variant.tsx.speculative;

 return 0;
}
