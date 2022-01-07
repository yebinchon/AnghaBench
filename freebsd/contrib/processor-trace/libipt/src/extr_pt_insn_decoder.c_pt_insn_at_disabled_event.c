
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int displacement; int is_direct; } ;
struct TYPE_12__ {TYPE_4__ branch; } ;
struct pt_insn_ext {TYPE_5__ variant; } ;
struct pt_insn {int iclass; int size; int ip; } ;
struct TYPE_13__ {int ip; } ;
struct TYPE_14__ {TYPE_6__ disabled; } ;
struct pt_event {TYPE_7__ variant; scalar_t__ ip_suppressed; } ;
struct TYPE_10__ {scalar_t__ skl014; } ;
struct TYPE_8__ {scalar_t__ addr_cfg; } ;
struct TYPE_9__ {TYPE_1__ config; } ;
struct pt_config {TYPE_3__ errata; TYPE_2__ addr_filter; } ;
typedef int int64_t ;


 int fallthrough ;
 scalar_t__ pt_insn_at_skl014 (struct pt_event const*,struct pt_insn const*,struct pt_insn_ext const*,struct pt_config const*) ;
 scalar_t__ pt_insn_changes_cpl (struct pt_insn const*,struct pt_insn_ext const*) ;
 scalar_t__ pt_insn_changes_cr3 (struct pt_insn const*,struct pt_insn_ext const*) ;
 scalar_t__ pt_insn_is_far_branch (struct pt_insn const*,struct pt_insn_ext const*) ;
 int pte_bad_insn ;
 int pte_internal ;
__attribute__((used)) static int pt_insn_at_disabled_event(const struct pt_event *ev,
         const struct pt_insn *insn,
         const struct pt_insn_ext *iext,
         const struct pt_config *config)
{
 if (!ev || !insn || !iext || !config)
  return -pte_internal;

 if (ev->ip_suppressed) {
  if (pt_insn_is_far_branch(insn, iext) ||
      pt_insn_changes_cpl(insn, iext) ||
      pt_insn_changes_cr3(insn, iext))
   return 1;






  if (config->addr_filter.config.addr_cfg &&
      config->errata.skl014 &&
      pt_insn_at_skl014(ev, insn, iext, config))
   return 1;
 } else {
  switch (insn->iclass) {
  case 129:
  case 130:
   break;

  case 137:
  case 131:



   if (iext->variant.branch.is_direct) {
    uint64_t ip;

    ip = insn->ip;
    ip += insn->size;
    ip += (uint64_t) (int64_t)
     iext->variant.branch.displacement;

    if (ip != ev->variant.disabled.ip)
     break;
   }

   fallthrough;
  case 128:
  case 134:
  case 132:
  case 133:
  case 136:
   return 1;

  case 135:
   return -pte_bad_insn;
  }
 }

 return 0;
}
