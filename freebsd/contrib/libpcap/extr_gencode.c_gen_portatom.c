
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_int32 ;


 int BPF_H ;
 int OR_TRAN_IPV4 ;
 struct block* gen_cmp (int *,int ,int,int ,int ) ;

__attribute__((used)) static struct block *
gen_portatom(compiler_state_t *cstate, int off, bpf_int32 v)
{
 return gen_cmp(cstate, OR_TRAN_IPV4, off, BPF_H, v);
}
