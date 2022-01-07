
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NV_TYPE_NONE ;
 int nvlist_free_type (int *,char const*,int ) ;

void
nvlist_free(nvlist_t *nvl, const char *name)
{

 nvlist_free_type(nvl, name, NV_TYPE_NONE);
}
