
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int displacement; int is_direct; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn {int iclass; int size; int ip; } ;
struct pt_event {int ip_suppressed; } ;
struct pt_config {int addr_filter; } ;
typedef int int64_t ;


 int pt_filter_addr_check (int *,int ) ;
 int pte_internal ;



__attribute__((used)) static int pt_insn_at_skl014(const struct pt_event *ev,
        const struct pt_insn *insn,
        const struct pt_insn_ext *iext,
        const struct pt_config *config)
{
 uint64_t ip;
 int status;

 if (!ev || !insn || !iext || !config)
  return -pte_internal;

 if (!ev->ip_suppressed)
  return 0;

 switch (insn->iclass) {
 case 129:
 case 128:

  if (!iext->variant.branch.is_direct)
   break;


  ip = insn->ip;
  ip += insn->size;
  ip += (uint64_t) (int64_t) iext->variant.branch.displacement;

  status = pt_filter_addr_check(&config->addr_filter, ip);
  if (status <= 0) {
   if (status < 0)
    return status;

   return 1;
  }
  break;

 default:
  break;
 }

 return 0;
}
