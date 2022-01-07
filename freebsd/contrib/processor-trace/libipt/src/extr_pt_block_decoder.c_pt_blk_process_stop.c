
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event {scalar_t__ status_update; } ;
struct pt_block_decoder {scalar_t__ process_event; scalar_t__ enabled; } ;


 int pte_bad_context ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_process_stop(struct pt_block_decoder *decoder,
          const struct pt_event *ev)
{
 if (!decoder || !ev)
  return -pte_internal;


 if (ev->status_update)
  return -pte_bad_context;


 if (decoder->enabled)
  return -pte_bad_context;

 decoder->process_event = 0;

 return 0;
}
