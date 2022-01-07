
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct block {int dummy; } ;
typedef enum e_offrel { ____Placeholder_e_offrel } e_offrel ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;
typedef int bpf_int32 ;


 int BPF_JEQ ;
 struct block* gen_ncmp (int *,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct block *
gen_mcmp(compiler_state_t *cstate, enum e_offrel offrel, u_int offset,
    u_int size, bpf_int32 v, bpf_u_int32 mask)
{
 return gen_ncmp(cstate, offrel, offset, size, mask, BPF_JEQ, 0, v);
}
