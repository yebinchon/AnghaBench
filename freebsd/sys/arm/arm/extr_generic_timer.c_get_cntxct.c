
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cntpct ;
 int cntvct ;
 int get_el0 (int ) ;
 int isb () ;

__attribute__((used)) static uint64_t
get_cntxct(bool physical)
{
 uint64_t val;

 isb();
 if (physical)
  val = get_el0(cntpct);
 else
  val = get_el0(cntvct);

 return (val);
}
