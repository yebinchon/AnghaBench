
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
get_cntxct_a64_unstable(bool physical)
{
 uint64_t val
;
 isb();
 if (physical) {
  do {
   val = get_el0(cntpct);
  }
  while (((val + 1) & 0x7FF) <= 1);
 }
 else {
  do {
   val = get_el0(cntvct);
  }
  while (((val + 1) & 0x7FF) <= 1);
 }

 return (val);
}
