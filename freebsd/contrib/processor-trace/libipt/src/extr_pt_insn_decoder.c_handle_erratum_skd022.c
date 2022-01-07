
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int ip; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_6__ {TYPE_2__ disabled; TYPE_1__ async_disabled; } ;
struct pt_event {TYPE_3__ variant; int type; } ;
struct pt_insn_decoder {struct pt_event event; } ;


 int check_erratum_skd022 (struct pt_insn_decoder*) ;
 int pte_internal ;
 int ptev_disabled ;

__attribute__((used)) static inline int handle_erratum_skd022(struct pt_insn_decoder *decoder)
{
 struct pt_event *ev;
 uint64_t ip;
 int errcode;

 if (!decoder)
  return -pte_internal;

 errcode = check_erratum_skd022(decoder);
 if (errcode <= 0)
  return errcode;




 ev = &decoder->event;

 ip = ev->variant.async_disabled.ip;

 ev->type = ptev_disabled;
 ev->variant.disabled.ip = ip;

 return 1;
}
