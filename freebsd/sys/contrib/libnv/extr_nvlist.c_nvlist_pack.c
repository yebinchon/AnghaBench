
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 scalar_t__ EOPNOTSUPP ;
 int ERRNO_SET (scalar_t__) ;
 int NVLIST_ASSERT (TYPE_1__ const*) ;
 scalar_t__ nvlist_ndescriptors (TYPE_1__ const*) ;
 void* nvlist_xpack (TYPE_1__ const*,int *,size_t*) ;

void *
nvlist_pack(const nvlist_t *nvl, size_t *sizep)
{

 NVLIST_ASSERT(nvl);

 if (nvl->nvl_error != 0) {
  ERRNO_SET(nvl->nvl_error);
  return (((void*)0));
 }

 if (nvlist_ndescriptors(nvl) > 0) {
  ERRNO_SET(EOPNOTSUPP);
  return (((void*)0));
 }

 return (nvlist_xpack(nvl, ((void*)0), sizep));
}
