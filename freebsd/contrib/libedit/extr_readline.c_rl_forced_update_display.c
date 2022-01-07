
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_REFRESH ;
 int e ;
 int el_set (int ,int ) ;

void
rl_forced_update_display(void)
{
 el_set(e, EL_REFRESH);
}
