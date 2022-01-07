
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct nvl_head {int dummy; } ;
struct TYPE_6__ {int * nvp_list; } ;
typedef TYPE_1__ nvpair_t ;
typedef int nvlist_t ;


 int NVPAIR_ASSERT (TYPE_1__*) ;
 int NV_FLAG_NO_UNIQUE ;
 int PJDLOG_ASSERT (int) ;
 int TAILQ_INSERT_TAIL (struct nvl_head*,TYPE_1__*,int ) ;
 int nvlist_exists (int *,int ) ;
 int nvlist_flags (int *) ;
 int nvp_next ;
 int nvpair_name (TYPE_1__*) ;

void
nvpair_insert(struct nvl_head *head, nvpair_t *nvp, nvlist_t *nvl)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_list == ((void*)0));
 PJDLOG_ASSERT((nvlist_flags(nvl) & NV_FLAG_NO_UNIQUE) != 0 ||
     !nvlist_exists(nvl, nvpair_name(nvp)));

 TAILQ_INSERT_TAIL(head, nvp, nvp_next);
 nvp->nvp_list = nvl;
}
