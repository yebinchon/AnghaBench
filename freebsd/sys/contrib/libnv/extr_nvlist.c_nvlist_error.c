
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int ENOMEM ;
 int NVLIST_ASSERT (TYPE_1__ const*) ;

int
nvlist_error(const nvlist_t *nvl)
{

 if (nvl == ((void*)0))
  return (ENOMEM);

 NVLIST_ASSERT(nvl);

 return (nvl->nvl_error);
}
