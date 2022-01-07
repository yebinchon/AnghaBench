
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_insn_ext {int iclass; } ;
struct pt_insn {int ip; int mode; } ;
struct TYPE_5__ {int ip; int at; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_6__ {TYPE_2__ async_disabled; TYPE_1__ disabled; } ;
struct pt_event {TYPE_3__ variant; int type; } ;
struct pt_block_decoder {int asid; int image; int mode; } ;




 int pt_insn_decode (struct pt_insn*,struct pt_insn_ext*,int ,int *) ;
 int pte_internal ;
 int ptev_disabled ;

__attribute__((used)) static int pt_blk_handle_erratum_skd022(struct pt_block_decoder *decoder,
     struct pt_event *ev)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int errcode;

 if (!decoder || !ev)
  return -pte_internal;

 insn.mode = decoder->mode;
 insn.ip = ev->variant.async_disabled.at;

 errcode = pt_insn_decode(&insn, &iext, decoder->image, &decoder->asid);
 if (errcode < 0)
  return 0;

 switch (iext.iclass) {
 default:

  return 0;

 case 129:
 case 128:






  ev->type = ptev_disabled;
  ev->variant.disabled.ip = ev->variant.async_disabled.ip;

  return 1;
 }
}
