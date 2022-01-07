
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DATA_TYPE_STRING ;
 int nvlist_add_common (int *,char const*,int ,int,void*) ;

int
nvlist_add_string(nvlist_t *nvl, const char *name, const char *val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_STRING, 1, (void *)val));
}
