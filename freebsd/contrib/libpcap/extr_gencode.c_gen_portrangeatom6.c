
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef scalar_t__ bpf_int32 ;


 int BPF_H ;
 int OR_TRAN_IPV6 ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp_ge (int *,int ,int,int ,scalar_t__) ;
 struct block* gen_cmp_le (int *,int ,int,int ,scalar_t__) ;

__attribute__((used)) static struct block *
gen_portrangeatom6(compiler_state_t *cstate, int off, bpf_int32 v1,
    bpf_int32 v2)
{
 struct block *b1, *b2;

 if (v1 > v2) {



  bpf_int32 vtemp;

  vtemp = v1;
  v1 = v2;
  v2 = vtemp;
 }

 b1 = gen_cmp_ge(cstate, OR_TRAN_IPV6, off, BPF_H, v1);
 b2 = gen_cmp_le(cstate, OR_TRAN_IPV6, off, BPF_H, v2);

 gen_and(b1, b2);

 return b2;
}
