
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZPROP_SRC_LOCAL ;
 int dsl_prop_get_hasrecvd (char const*) ;
 int dsl_prop_set_hasrecvd_impl (char const*,int ) ;

int
dsl_prop_set_hasrecvd(const char *dsname)
{
 int error = 0;
 if (!dsl_prop_get_hasrecvd(dsname))
  error = dsl_prop_set_hasrecvd_impl(dsname, ZPROP_SRC_LOCAL);
 return (error);
}
