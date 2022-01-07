
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nvl_nvflag; } ;
typedef TYPE_1__ nvlist_t ;
typedef int nv_alloc_t ;


 int EINVAL ;
 int nvlist_copy_pairs (TYPE_1__*,TYPE_1__*) ;
 int nvlist_free (TYPE_1__*) ;
 int nvlist_xalloc (TYPE_1__**,int ,int *) ;

int
nvlist_xdup(nvlist_t *nvl, nvlist_t **nvlp, nv_alloc_t *nva)
{
 int err;
 nvlist_t *ret;

 if (nvl == ((void*)0) || nvlp == ((void*)0))
  return (EINVAL);

 if ((err = nvlist_xalloc(&ret, nvl->nvl_nvflag, nva)) != 0)
  return (err);

 if ((err = nvlist_copy_pairs(nvl, ret)) != 0)
  nvlist_free(ret);
 else
  *nvlp = ret;

 return (err);
}
