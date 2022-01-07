
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 int BPF_B ;
 int LLC_S_FMT ;
 int OR_LLC ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_llc (int *) ;
 struct block* gen_mcmp (int *,int ,int,int ,int ,int) ;

struct block *
gen_llc_s(compiler_state_t *cstate)
{
 struct block *b0, *b1;




 b0 = gen_llc(cstate);





 b1 = gen_mcmp(cstate, OR_LLC, 2, BPF_B, LLC_S_FMT, 0x03);
 gen_and(b0, b1);
 return b1;
}
