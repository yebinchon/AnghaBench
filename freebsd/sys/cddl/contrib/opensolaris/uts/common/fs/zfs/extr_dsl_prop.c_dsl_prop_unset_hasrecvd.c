
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERIFY0 (int ) ;
 int ZPROP_SRC_NONE ;
 int dsl_prop_set_hasrecvd_impl (char const*,int ) ;

void
dsl_prop_unset_hasrecvd(const char *dsname)
{
 VERIFY0(dsl_prop_set_hasrecvd_impl(dsname, ZPROP_SRC_NONE));
}
