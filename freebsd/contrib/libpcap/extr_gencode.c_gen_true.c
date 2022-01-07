
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef int compiler_state_t ;


 struct block* gen_uncond (int *,int) ;

__attribute__((used)) static inline struct block *
gen_true(compiler_state_t *cstate)
{
 return gen_uncond(cstate, 1);
}
