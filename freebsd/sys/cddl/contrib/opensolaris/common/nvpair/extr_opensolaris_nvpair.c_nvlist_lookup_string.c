
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DATA_TYPE_STRING ;
 int nvlist_lookup_common (int *,char const*,int ,int *,char**) ;

int
nvlist_lookup_string(nvlist_t *nvl, const char *name, char **val)
{
 return (nvlist_lookup_common(nvl, name, DATA_TYPE_STRING, ((void*)0), val));
}
