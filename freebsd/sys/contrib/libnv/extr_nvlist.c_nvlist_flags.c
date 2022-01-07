
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvl_error; int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;
 int NV_FLAG_PUBLIC_MASK ;
 int PJDLOG_ASSERT (int) ;

int
nvlist_flags(const nvlist_t *nvl)
{

 NVLIST_ASSERT(nvl);
 PJDLOG_ASSERT(nvl->nvl_error == 0);

 return (nvl->nvl_flags & NV_FLAG_PUBLIC_MASK);
}
