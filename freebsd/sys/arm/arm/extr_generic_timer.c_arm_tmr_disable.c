
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GT_CTRL_ENABLE ;
 int get_ctrl (int) ;
 int set_ctrl (int,int) ;

__attribute__((used)) static void
arm_tmr_disable(bool physical)
{
 int ctrl;

 ctrl = get_ctrl(physical);
 ctrl &= ~GT_CTRL_ENABLE;
 set_ctrl(ctrl, physical);
}
