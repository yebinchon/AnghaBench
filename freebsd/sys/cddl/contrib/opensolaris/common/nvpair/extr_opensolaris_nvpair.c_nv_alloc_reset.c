
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* nva_ops; } ;
typedef TYPE_2__ nv_alloc_t ;
struct TYPE_5__ {int (* nv_ao_reset ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

void
nv_alloc_reset(nv_alloc_t *nva)
{
 if (nva->nva_ops->nv_ao_reset != ((void*)0))
  nva->nva_ops->nv_ao_reset(nva);
}
