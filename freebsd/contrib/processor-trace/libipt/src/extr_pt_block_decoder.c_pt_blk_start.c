
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int status; int enabled; } ;


 int pt_blk_proceed_trailing_event (struct pt_block_decoder*,int *) ;
 int pte_internal ;
 int pts_ip_suppressed ;

__attribute__((used)) static int pt_blk_start(struct pt_block_decoder *decoder, int status)
{
 if (!decoder)
  return -pte_internal;

 if (status < 0)
  return status;

 decoder->status = status;
 if (!(status & pts_ip_suppressed))
  decoder->enabled = 1;
 return pt_blk_proceed_trailing_event(decoder, ((void*)0));
}
