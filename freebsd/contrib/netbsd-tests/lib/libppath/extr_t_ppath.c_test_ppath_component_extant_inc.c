
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;
 scalar_t__ nppath_component ;

void
test_ppath_component_extant_inc(void)
{
 if (++nppath_component == 0)
  atf_tc_fail("count of extant path components overflowed");
}
