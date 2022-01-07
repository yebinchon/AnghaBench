
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speculative; } ;
struct TYPE_4__ {TYPE_1__ tsx; } ;
struct pt_event {TYPE_2__ variant; } ;
struct pt_block_decoder {scalar_t__ process_event; int speculative; } ;


 int pte_internal ;

__attribute__((used)) static int pt_blk_process_tsx(struct pt_block_decoder *decoder,
         const struct pt_event *ev)
{
 if (!decoder || !ev)
  return -pte_internal;

 decoder->speculative = ev->variant.tsx.speculative;
 decoder->process_event = 0;

 return 0;
}
