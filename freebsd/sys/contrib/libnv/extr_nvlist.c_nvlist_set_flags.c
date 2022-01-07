
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvl_error; int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;
 int PJDLOG_ASSERT (int) ;

void
nvlist_set_flags(nvlist_t *nvl, int flags)
{

 NVLIST_ASSERT(nvl);
 PJDLOG_ASSERT(nvl->nvl_error == 0);

 nvl->nvl_flags = flags;
}
