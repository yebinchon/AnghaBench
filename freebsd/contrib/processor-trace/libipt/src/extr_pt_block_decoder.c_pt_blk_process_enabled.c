
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ip; } ;
struct TYPE_4__ {TYPE_1__ enabled; } ;
struct pt_event {TYPE_2__ variant; scalar_t__ ip_suppressed; scalar_t__ status_update; } ;
struct pt_block_decoder {int enabled; scalar_t__ process_event; int ip; } ;


 int pte_bad_context ;
 int pte_internal ;
 int pte_noip ;

__attribute__((used)) static int pt_blk_process_enabled(struct pt_block_decoder *decoder,
      const struct pt_event *ev)
{
 if (!decoder || !ev)
  return -pte_internal;


 if (ev->status_update)
  return -pte_bad_context;


 if (ev->ip_suppressed)
  return -pte_noip;


 if (decoder->enabled)
  return -pte_bad_context;

 decoder->ip = ev->variant.enabled.ip;
 decoder->enabled = 1;
 decoder->process_event = 0;

 return 0;
}
