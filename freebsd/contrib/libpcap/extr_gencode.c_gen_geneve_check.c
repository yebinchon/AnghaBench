
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef enum e_offrel { ____Placeholder_e_offrel } e_offrel ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_B ;
 int BPF_W ;
 int GENEVE_PORT ;
 int IPPROTO_UDP ;
 int Q_DST ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_mcmp (int *,int,int,int ,int ,int) ;

__attribute__((used)) static struct block *
gen_geneve_check(compiler_state_t *cstate,
    struct block *(*gen_portfn)(compiler_state_t *, int, int, int),
    enum e_offrel offrel, int vni)
{
 struct block *b0, *b1;

 b0 = gen_portfn(cstate, GENEVE_PORT, IPPROTO_UDP, Q_DST);




 b1 = gen_mcmp(cstate, offrel, 8, BPF_B, (bpf_int32)0, 0xc0);
 gen_and(b0, b1);
 b0 = b1;

 if (vni >= 0) {
  vni <<= 8;
  b1 = gen_mcmp(cstate, offrel, 12, BPF_W, (bpf_int32)vni,
         0xffffff00);
  gen_and(b0, b1);
  b0 = b1;
 }

 return b0;
}
