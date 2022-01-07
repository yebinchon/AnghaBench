
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long ip; } ;
struct TYPE_4__ {TYPE_1__ overflow; } ;
struct pt_event {TYPE_2__ variant; scalar_t__ ip_suppressed; scalar_t__ status_update; } ;
struct pt_insn_decoder {int enabled; unsigned long long ip; scalar_t__ speculative; struct pt_event event; } ;


 int pte_bad_context ;
 int pte_internal ;

__attribute__((used)) static int pt_insn_process_overflow(struct pt_insn_decoder *decoder)
{
 struct pt_event *ev;

 if (!decoder)
  return -pte_internal;

 ev = &decoder->event;


 if (ev->status_update)
  return -pte_bad_context;




 if (ev->ip_suppressed) {







  decoder->enabled = 0;
  decoder->ip = 0ull;
 } else {



  decoder->ip = ev->variant.overflow.ip;
  decoder->enabled = 1;
 }







 decoder->speculative = 0;

 return 0;
}
