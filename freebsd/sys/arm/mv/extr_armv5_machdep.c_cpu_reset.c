
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RSTOUTn_MASK ;
 int SOFT_RST_OUT_EN ;
 int SYSTEM_SOFT_RESET ;
 int SYS_SOFT_RST ;
 int write_cpu_ctrl (int ,int ) ;

void
cpu_reset(void)
{

 write_cpu_ctrl(RSTOUTn_MASK, SOFT_RST_OUT_EN);
 write_cpu_ctrl(SYSTEM_SOFT_RESET, SYS_SOFT_RST);
 while(1);
}
