
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_EQ (int ,int ) ;
 int nppath_component ;

__attribute__((used)) static void
assert_no_ppath_component_extant(void)
{
 ATF_CHECK_EQ(nppath_component, 0);
}
