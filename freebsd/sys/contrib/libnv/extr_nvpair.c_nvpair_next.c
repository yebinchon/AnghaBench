
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * nvp_list; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;
 int PJDLOG_ASSERT (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__ const*,int ) ;
 int nvp_next ;

nvpair_t *
nvpair_next(const nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_list != ((void*)0));

 return (TAILQ_NEXT(nvp, nvp_next));
}
