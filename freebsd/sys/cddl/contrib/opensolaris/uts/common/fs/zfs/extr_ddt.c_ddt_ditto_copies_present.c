
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dva_t ;
struct TYPE_4__ {int * ddp_dva; } ;
typedef TYPE_1__ ddt_phys_t ;
struct TYPE_5__ {TYPE_1__* dde_phys; } ;
typedef TYPE_2__ ddt_entry_t ;


 int ASSERT (int) ;
 size_t DDT_PHYS_DITTO ;
 int DVA_GET_GANG (int *) ;
 scalar_t__ DVA_IS_VALID (int *) ;
 int SPA_DVAS_PER_BP ;

int
ddt_ditto_copies_present(ddt_entry_t *dde)
{
 ddt_phys_t *ddp = &dde->dde_phys[DDT_PHYS_DITTO];
 dva_t *dva = ddp->ddp_dva;
 int copies = 0 - DVA_GET_GANG(dva);

 for (int d = 0; d < SPA_DVAS_PER_BP; d++, dva++)
  if (DVA_IS_VALID(dva))
   copies++;

 ASSERT(copies >= 0 && copies < SPA_DVAS_PER_BP);

 return (copies);
}
