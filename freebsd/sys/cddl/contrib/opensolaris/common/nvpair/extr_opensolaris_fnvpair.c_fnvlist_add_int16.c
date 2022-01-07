
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int int16_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_int16 (int *,char const*,int ) ;

void
fnvlist_add_int16(nvlist_t *nvl, const char *name, int16_t val)
{
 VERIFY0(nvlist_add_int16(nvl, name, val));
}
