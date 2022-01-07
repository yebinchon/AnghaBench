
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_string (int *,char**) ;

char *
fnvpair_value_string(nvpair_t *nvp)
{
 char *rv;
 VERIFY0(nvpair_value_string(nvp, &rv));
 return (rv);
}
