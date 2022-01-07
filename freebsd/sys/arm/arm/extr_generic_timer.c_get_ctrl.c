
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cntp_ctl ;
 int cntv_ctl ;
 int get_el0 (int ) ;

__attribute__((used)) static int
get_ctrl(bool physical)
{
 uint32_t val;

 if (physical)
  val = get_el0(cntp_ctl);
 else
  val = get_el0(cntv_ctl);

 return (val);
}
