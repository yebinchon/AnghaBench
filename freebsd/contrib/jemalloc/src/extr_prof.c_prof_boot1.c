
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cassert (int ) ;
 int config_prof ;
 int opt_lg_prof_interval ;
 int opt_prof ;
 int opt_prof_gdump ;
 scalar_t__ opt_prof_leak ;
 int prof_interval ;

void
prof_boot1(void) {
 cassert(config_prof);






 if (opt_prof_leak && !opt_prof) {




  opt_prof = 1;
  opt_prof_gdump = 0;
 } else if (opt_prof) {
  if (opt_lg_prof_interval >= 0) {
   prof_interval = (((uint64_t)1U) <<
       opt_lg_prof_interval);
  }
 }
}
