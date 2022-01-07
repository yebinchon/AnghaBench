
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*) ;
 int nppath ;

void
test_ppath_extant_dec(void)
{
 if (nppath-- == 0)
  atf_tc_fail("count of extant path underflowed");
}
