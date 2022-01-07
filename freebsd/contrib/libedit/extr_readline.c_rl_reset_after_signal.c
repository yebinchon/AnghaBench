
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rl_prep_term_function () ;
 int stub1 () ;

void
rl_reset_after_signal(void)
{
 if (rl_prep_term_function)
  (*rl_prep_term_function)();
}
