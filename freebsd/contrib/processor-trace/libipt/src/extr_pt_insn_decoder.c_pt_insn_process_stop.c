
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_event {scalar_t__ status_update; } ;
struct pt_insn_decoder {scalar_t__ enabled; struct pt_event event; } ;


 int pte_bad_context ;
 int pte_internal ;

__attribute__((used)) static int pt_insn_process_stop(struct pt_insn_decoder *decoder)
{
 struct pt_event *ev;

 if (!decoder)
  return -pte_internal;

 ev = &decoder->event;


 if (ev->status_update)
  return -pte_bad_context;


 if (decoder->enabled)
  return -pte_bad_context;

 return 0;
}
