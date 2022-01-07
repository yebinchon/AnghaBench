
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_string (int *,char const*,char const*) ;

void
fnvlist_add_string(nvlist_t *nvl, const char *name, const char *val)
{
 VERIFY0(nvlist_add_string(nvl, name, val));
}
