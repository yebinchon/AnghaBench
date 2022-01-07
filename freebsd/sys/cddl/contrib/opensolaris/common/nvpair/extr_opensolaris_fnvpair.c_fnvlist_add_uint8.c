
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_uint8 (int *,char const*,int ) ;

void
fnvlist_add_uint8(nvlist_t *nvl, const char *name, uint8_t val)
{
 VERIFY0(nvlist_add_uint8(nvl, name, val));
}
