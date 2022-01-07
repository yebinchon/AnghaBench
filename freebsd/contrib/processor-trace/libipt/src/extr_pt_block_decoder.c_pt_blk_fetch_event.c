
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int process_event; int status; int event; int query; } ;


 int pt_qry_event (int *,int *,int) ;
 int pte_internal ;
 int pts_event_pending ;

__attribute__((used)) static inline int pt_blk_fetch_event(struct pt_block_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_internal;

 if (decoder->process_event)
  return 1;

 if (!(decoder->status & pts_event_pending))
  return 0;

 status = pt_qry_event(&decoder->query, &decoder->event,
         sizeof(decoder->event));
 if (status < 0)
  return status;

 decoder->process_event = 1;
 decoder->status = status;

 return 1;
}
