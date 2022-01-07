
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int status; int enabled; } ;


 int pt_insn_check_ip_event (struct pt_insn_decoder*,int *,int *) ;
 int pte_internal ;
 int pts_ip_suppressed ;

__attribute__((used)) static int pt_insn_start(struct pt_insn_decoder *decoder, int status)
{
 if (!decoder)
  return -pte_internal;

 if (status < 0)
  return status;

 decoder->status = status;

 if (!(status & pts_ip_suppressed))
  decoder->enabled = 1;
 return pt_insn_check_ip_event(decoder, ((void*)0), ((void*)0));
}
