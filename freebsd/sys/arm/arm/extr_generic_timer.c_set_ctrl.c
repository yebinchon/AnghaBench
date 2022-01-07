
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cntp_ctl ;
 int cntv_ctl ;
 int isb () ;
 int set_el0 (int ,int ) ;

__attribute__((used)) static int
set_ctrl(uint32_t val, bool physical)
{

 if (physical)
  set_el0(cntp_ctl, val);
 else
  set_el0(cntv_ctl, val);
 isb();

 return (0);
}
