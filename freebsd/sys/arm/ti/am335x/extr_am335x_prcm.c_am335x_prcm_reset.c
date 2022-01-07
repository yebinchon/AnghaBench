
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRM_RSTCTRL ;
 int prcm_write_4 (int ,int) ;

__attribute__((used)) static void
am335x_prcm_reset(void)
{
 prcm_write_4(PRM_RSTCTRL, (1<<1));
}
