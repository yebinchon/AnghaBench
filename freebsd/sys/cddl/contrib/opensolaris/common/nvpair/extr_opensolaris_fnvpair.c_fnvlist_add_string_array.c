
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_string_array (int *,char const*,char* const*,int ) ;

void
fnvlist_add_string_array(nvlist_t *nvl, const char *name,
    char * const *val, uint_t n)
{
 VERIFY0(nvlist_add_string_array(nvl, name, val, n));
}
