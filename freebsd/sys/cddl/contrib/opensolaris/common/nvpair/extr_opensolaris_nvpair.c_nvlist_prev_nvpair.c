
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* nvp_curr; TYPE_3__* nvp_last; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nvpair_t ;
struct TYPE_8__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;
struct TYPE_9__ {int nvi_nvp; struct TYPE_9__* nvi_prev; } ;
typedef TYPE_3__ i_nvp_t ;


 TYPE_3__* NVPAIR2I_NVP (int *) ;
 scalar_t__ nvlist_contains_nvp (TYPE_2__*,int *) ;

nvpair_t *
nvlist_prev_nvpair(nvlist_t *nvl, nvpair_t *nvp)
{
 nvpriv_t *priv;
 i_nvp_t *curr;

 if (nvl == ((void*)0) ||
     (priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv) == ((void*)0))
  return (((void*)0));

 curr = NVPAIR2I_NVP(nvp);

 if (nvp == ((void*)0))
  curr = priv->nvp_last;
 else if (priv->nvp_curr == curr || nvlist_contains_nvp(nvl, nvp))
  curr = curr->nvi_prev;
 else
  curr = ((void*)0);

 priv->nvp_curr = curr;

 return (curr != ((void*)0) ? &curr->nvi_nvp : ((void*)0));
}
