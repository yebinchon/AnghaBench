
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_priv; } ;
typedef TYPE_1__ nvlist_t ;
typedef int data_type_t ;


 int EINVAL ;
 int ENOENT ;
 int nvlist_remove_nvpair (TYPE_1__*,int *) ;
 int * nvt_lookup_name_type (TYPE_1__*,char const*,int ) ;

int
nvlist_remove(nvlist_t *nvl, const char *name, data_type_t type)
{
 if (nvl == ((void*)0) || name == ((void*)0) || nvl->nvl_priv == 0)
  return (EINVAL);

 nvpair_t *nvp = nvt_lookup_name_type(nvl, name, type);
 if (nvp == ((void*)0))
  return (ENOENT);

 return (nvlist_remove_nvpair(nvl, nvp));
}
