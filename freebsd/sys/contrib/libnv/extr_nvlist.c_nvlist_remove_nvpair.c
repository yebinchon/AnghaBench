
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_6__ {int nvl_head; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_ASSERT (TYPE_1__*) ;
 int NVPAIR_ASSERT (int *) ;
 int PJDLOG_ASSERT (int) ;
 TYPE_1__* nvpair_nvlist (int *) ;
 int nvpair_remove (int *,int *,TYPE_1__*) ;

void
nvlist_remove_nvpair(nvlist_t *nvl, nvpair_t *nvp)
{

 NVLIST_ASSERT(nvl);
 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvpair_nvlist(nvp) == nvl);

 nvpair_remove(&nvl->nvl_head, nvp, nvl);
}
