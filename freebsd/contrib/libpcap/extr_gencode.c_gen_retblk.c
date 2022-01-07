
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k; } ;
struct block {TYPE_1__ s; } ;
typedef int compiler_state_t ;


 int BPF_K ;
 int BPF_RET ;
 struct block* new_block (int *,int) ;

__attribute__((used)) static struct block *
gen_retblk(compiler_state_t *cstate, int v)
{
 struct block *b = new_block(cstate, BPF_RET|BPF_K);

 b->s.k = v;
 return b;
}
