
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env ;
 int pll_control ;
 int siglongjmp (int ,int) ;

void
pll_trap(
 int arg
 )
{
 pll_control--;
 siglongjmp(env, 1);
}
