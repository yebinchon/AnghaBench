
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int hrtime_t ;


 int DATA_TYPE_HRTIME ;
 int nvlist_add_common (int *,char const*,int ,int,int *) ;

int
nvlist_add_hrtime(nvlist_t *nvl, const char *name, hrtime_t val)
{
 return (nvlist_add_common(nvl, name, DATA_TYPE_HRTIME, 1, &val));
}
