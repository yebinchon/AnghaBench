
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int status; int process_event; int enabled; } ;


 int pte_internal ;
 int pts_eos ;
 int pts_ip_suppressed ;

__attribute__((used)) static int pt_blk_status(const struct pt_block_decoder *decoder, int flags)
{
 int status;

 if (!decoder)
  return -pte_internal;

 status = decoder->status;






 if (!decoder->enabled)
  flags |= pts_ip_suppressed;





 if ((status & pts_eos) && !decoder->process_event)
  flags |= pts_eos;

 return flags;
}
