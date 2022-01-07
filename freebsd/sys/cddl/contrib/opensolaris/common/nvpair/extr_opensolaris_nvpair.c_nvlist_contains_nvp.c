
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* nvp_list; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nvpair_t ;
struct TYPE_6__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;
struct TYPE_7__ {int nvi_nvp; struct TYPE_7__* nvi_next; } ;
typedef TYPE_3__ i_nvp_t ;



__attribute__((used)) static int
nvlist_contains_nvp(nvlist_t *nvl, nvpair_t *nvp)
{
 nvpriv_t *priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv;
 i_nvp_t *curr;

 if (nvp == ((void*)0))
  return (0);

 for (curr = priv->nvp_list; curr != ((void*)0); curr = curr->nvi_next)
  if (&curr->nvi_nvp == nvp)
   return (1);

 return (0);
}
