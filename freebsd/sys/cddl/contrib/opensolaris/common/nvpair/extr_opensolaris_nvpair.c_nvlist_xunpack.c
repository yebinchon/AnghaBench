
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int nv_alloc_t ;


 int EINVAL ;
 int NVS_OP_DECODE ;
 int nvlist_common (int *,char*,size_t*,int ,int ) ;
 int nvlist_free (int *) ;
 int nvlist_xalloc (int **,int ,int *) ;

int
nvlist_xunpack(char *buf, size_t buflen, nvlist_t **nvlp, nv_alloc_t *nva)
{
 nvlist_t *nvl;
 int err;

 if (nvlp == ((void*)0))
  return (EINVAL);

 if ((err = nvlist_xalloc(&nvl, 0, nva)) != 0)
  return (err);

 if ((err = nvlist_common(nvl, buf, &buflen, 0, NVS_OP_DECODE)) != 0)
  nvlist_free(nvl);
 else
  *nvlp = nvl;

 return (err);
}
