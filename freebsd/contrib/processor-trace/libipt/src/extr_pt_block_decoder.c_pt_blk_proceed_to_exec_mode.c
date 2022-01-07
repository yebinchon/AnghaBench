
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ip; } ;
struct TYPE_4__ {TYPE_1__ exec_mode; } ;
struct pt_event {TYPE_2__ variant; scalar_t__ ip_suppressed; } ;
struct pt_block_decoder {scalar_t__ ip; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_to_ip_with_trace (struct pt_block_decoder*,struct pt_block*,scalar_t__) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_proceed_to_exec_mode(struct pt_block_decoder *decoder,
           struct pt_block *block,
           const struct pt_event *ev)
{
 int status;

 if (!decoder || !ev)
  return -pte_internal;


 if (ev->ip_suppressed)
  return 1;

 status = pt_blk_proceed_to_ip_with_trace(decoder, block,
       ev->variant.exec_mode.ip);
 if (status < 0)
  return status;


 return (decoder->ip == ev->variant.exec_mode.ip ? 1 : 0);
}
