
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;


 int rump_schedule () ;
 int rump_unschedule () ;
 int rumpns_bpf_validate (struct bpf_insn*,size_t) ;

__attribute__((used)) static inline bool
prog_validate(struct bpf_insn *insns, size_t insn_count)
{
 bool res;

 rump_schedule();
 res = rumpns_bpf_validate(insns, insn_count);
 rump_unschedule();

 return res;
}
