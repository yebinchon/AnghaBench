
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_insn_ext {int dummy; } ;
struct pt_insn_decoder {int ip; int asid; int image; int mode; } ;
struct pt_insn {int dummy; } ;
struct TYPE_3__ {int ip; int aborted; } ;
struct TYPE_4__ {TYPE_1__ tsx; } ;
struct pt_event {TYPE_2__ variant; } ;


 int bdm64_max_steps ;
 int pt_insn_is_branch (struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_range_is_contiguous (int ,int ,int ,int ,int *,int ) ;
 int pte_internal ;

__attribute__((used)) static int handle_erratum_bdm64(struct pt_insn_decoder *decoder,
    const struct pt_event *ev,
    const struct pt_insn *insn,
    const struct pt_insn_ext *iext)
{
 int status;

 if (!decoder || !ev || !insn || !iext)
  return -pte_internal;


 if (!ev->variant.tsx.aborted)
  return 0;


 if (!pt_insn_is_branch(insn, iext))
  return 0;






 status = pt_insn_range_is_contiguous(decoder->ip, ev->variant.tsx.ip,
          decoder->mode, decoder->image,
          &decoder->asid, bdm64_max_steps);
 if (status > 0)
  return 0;







 decoder->ip = ev->variant.tsx.ip;

 return 1;
}
