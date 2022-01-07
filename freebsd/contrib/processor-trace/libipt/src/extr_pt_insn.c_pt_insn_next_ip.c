
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int displacement; int is_direct; } ;
struct TYPE_3__ {TYPE_2__ branch; } ;
struct pt_insn_ext {TYPE_1__ variant; } ;
struct pt_insn {int iclass; scalar_t__ size; scalar_t__ ip; } ;
typedef int int64_t ;


 int fallthrough ;
 int pte_bad_insn ;
 int pte_bad_query ;
 int pte_internal ;






int pt_insn_next_ip(uint64_t *pip, const struct pt_insn *insn,
      const struct pt_insn_ext *iext)
{
 uint64_t ip;

 if (!insn || !iext)
  return -pte_internal;

 ip = insn->ip + insn->size;

 switch (insn->iclass) {
 case 128:
 case 129:
  break;

 case 132:
 case 130:
  if (iext->variant.branch.is_direct) {
   ip += (uint64_t) (int64_t)
    iext->variant.branch.displacement;
   break;
  }

  fallthrough;
 default:
  return -pte_bad_query;

 case 131:
  return -pte_bad_insn;
 }

 if (pip)
  *pip = ip;

 return 0;
}
