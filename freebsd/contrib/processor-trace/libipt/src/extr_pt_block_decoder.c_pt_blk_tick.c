
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;
struct TYPE_3__ {scalar_t__ ip; } ;
struct TYPE_4__ {TYPE_1__ tick; } ;
struct pt_event {scalar_t__ tsc; int has_tsc; void* lost_cyc; void* lost_mtc; TYPE_2__ variant; int type; } ;
struct pt_block_decoder {int process_event; struct pt_event event; int query; int enabled; } ;


 int memset (struct pt_event*,int ,int) ;
 int pt_qry_time (int *,scalar_t__*,void**,void**) ;
 int pte_internal ;
 int pte_no_time ;
 int ptev_tick ;

__attribute__((used)) static int pt_blk_tick(struct pt_block_decoder *decoder, uint64_t ip)
{
 struct pt_event *ev;
 uint64_t tsc;
 uint32_t lost_mtc, lost_cyc;
 int errcode;

 if (!decoder)
  return -pte_internal;


 if (!decoder->enabled)
  return -pte_internal;
 if (decoder->process_event)
  return 0;

 errcode = pt_qry_time(&decoder->query, &tsc, &lost_mtc, &lost_cyc);
 if (errcode < 0) {

  if (errcode != -pte_no_time)
   return errcode;
 }

 ev = &decoder->event;


 if (tsc == ev->tsc)
  return 0;


 memset(ev, 0, sizeof(*ev));
 ev->type = ptev_tick;
 ev->variant.tick.ip = ip;


 if (errcode != -pte_no_time)
  ev->has_tsc = 1;
 ev->tsc = tsc;
 ev->lost_mtc = lost_mtc;
 ev->lost_cyc = lost_cyc;


 decoder->process_event = 1;

 return 1;
}
