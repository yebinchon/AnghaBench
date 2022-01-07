
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int nvpair_t ;
struct TYPE_4__ {scalar_t__ nvl_priv; int nvl_nvflag; } ;
typedef TYPE_1__ nvlist_t ;
typedef int data_type_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int NV_UNIQUE_NAME ;
 int NV_UNIQUE_NAME_TYPE ;
 int nvpair_value_common (int *,int ,int *,void*) ;
 int * nvt_lookup_name_type (TYPE_1__*,char const*,int ) ;

__attribute__((used)) static int
nvlist_lookup_common(nvlist_t *nvl, const char *name, data_type_t type,
    uint_t *nelem, void *data)
{
 if (name == ((void*)0) || nvl == ((void*)0) || nvl->nvl_priv == 0)
  return (EINVAL);

 if (!(nvl->nvl_nvflag & (NV_UNIQUE_NAME | NV_UNIQUE_NAME_TYPE)))
  return (ENOTSUP);

 nvpair_t *nvp = nvt_lookup_name_type(nvl, name, type);
 if (nvp == ((void*)0))
  return (ENOENT);

 return (nvpair_value_common(nvp, type, nelem, data));
}
