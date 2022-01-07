
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nvp_magic; int * nvp_list; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__*) ;
 int PJDLOG_ASSERT (int ) ;
 int nv_free (TYPE_1__*) ;

void
nvpair_free_structure(nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);
 PJDLOG_ASSERT(nvp->nvp_list == ((void*)0));

 nvp->nvp_magic = 0;
 nv_free(nvp);
}
