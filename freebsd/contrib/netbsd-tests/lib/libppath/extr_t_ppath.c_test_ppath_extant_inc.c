
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;
 scalar_t__ nppath ;

void
test_ppath_extant_inc(void)
{
 if (++nppath == 0)
  atf_tc_fail("count of extant paths overflowed");
}
