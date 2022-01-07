
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_PREP_TERM ;
 int e ;
 int el_set (int ,int ,int ) ;

void
rl_deprep_terminal(void)
{
 el_set(e, EL_PREP_TERM, 0);
}
