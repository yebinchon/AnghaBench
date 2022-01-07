
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int process_event; int status; int event; int query; } ;


 int pt_qry_event (int *,int *,int) ;
 int pte_invalid ;
 int pts_event_pending ;

__attribute__((used)) static inline int event_pending(struct pt_insn_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_invalid;

 if (decoder->process_event)
  return 1;

 status = decoder->status;
 if (!(status & pts_event_pending))
  return 0;

 status = pt_qry_event(&decoder->query, &decoder->event,
         sizeof(decoder->event));
 if (status < 0)
  return status;

 decoder->process_event = 1;
 decoder->status = status;
 return 1;
}
