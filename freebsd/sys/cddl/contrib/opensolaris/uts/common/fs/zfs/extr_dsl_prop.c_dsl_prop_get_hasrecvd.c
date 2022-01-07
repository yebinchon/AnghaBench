
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int ZPROP_HAS_RECVD ;
 scalar_t__ dsl_prop_get_integer (char const*,int ,int *,int *) ;

boolean_t
dsl_prop_get_hasrecvd(const char *dsname)
{
 uint64_t dummy;

 return (0 ==
     dsl_prop_get_integer(dsname, ZPROP_HAS_RECVD, &dummy, ((void*)0)));
}
