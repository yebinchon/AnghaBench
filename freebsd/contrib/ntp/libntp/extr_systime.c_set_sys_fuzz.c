
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSIST (int) ;
 scalar_t__ ceil (double) ;
 double sys_fuzz ;
 long sys_fuzz_nsec ;

void
set_sys_fuzz(
 double fuzz_val
 )
{
 sys_fuzz = fuzz_val;
 INSIST(sys_fuzz >= 0);
 INSIST(sys_fuzz <= 1.0);



 sys_fuzz_nsec = (long)ceil(sys_fuzz * 1e9);
}
