
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_priv; } ;
typedef TYPE_1__ nvlist_t ;


 int EINVAL ;
 int ENOENT ;
 int VERIFY0 (int ) ;
 int nvlist_remove_nvpair (TYPE_1__*,int *) ;
 int * nvt_lookup_name (TYPE_1__*,char const*) ;

int
nvlist_remove_all(nvlist_t *nvl, const char *name)
{
 int error = ENOENT;

 if (nvl == ((void*)0) || name == ((void*)0) || nvl->nvl_priv == 0)
  return (EINVAL);

 nvpair_t *nvp;
 while ((nvp = nvt_lookup_name(nvl, name)) != ((void*)0)) {
  VERIFY0(nvlist_remove_nvpair(nvl, nvp));
  error = 0;
 }

 return (error);
}
