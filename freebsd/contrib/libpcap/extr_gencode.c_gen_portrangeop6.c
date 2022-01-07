
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int OR_LINKPL ;





 int abort () ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (int *,int ,int,int ,int ) ;
 int gen_or (struct block*,struct block*) ;
 struct block* gen_portrangeatom6 (int *,int,int ,int ) ;

struct block *
gen_portrangeop6(compiler_state_t *cstate, int port1, int port2, int proto,
    int dir)
{
 struct block *b0, *b1, *tmp;



 b0 = gen_cmp(cstate, OR_LINKPL, 6, BPF_B, (bpf_int32)proto);

 switch (dir) {
 case 128:
  b1 = gen_portrangeatom6(cstate, 0, (bpf_int32)port1, (bpf_int32)port2);
  break;

 case 130:
  b1 = gen_portrangeatom6(cstate, 2, (bpf_int32)port1, (bpf_int32)port2);
  break;

 case 129:
 case 131:
  tmp = gen_portrangeatom6(cstate, 0, (bpf_int32)port1, (bpf_int32)port2);
  b1 = gen_portrangeatom6(cstate, 2, (bpf_int32)port1, (bpf_int32)port2);
  gen_or(tmp, b1);
  break;

 case 132:
  tmp = gen_portrangeatom6(cstate, 0, (bpf_int32)port1, (bpf_int32)port2);
  b1 = gen_portrangeatom6(cstate, 2, (bpf_int32)port1, (bpf_int32)port2);
  gen_and(tmp, b1);
  break;

 default:
  abort();
 }
 gen_and(b0, b1);

 return b1;
}
