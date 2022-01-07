
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* nvp_last; TYPE_3__* nvp_list; TYPE_3__* nvp_curr; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nvpair_t ;
struct TYPE_7__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;
struct TYPE_8__ {struct TYPE_8__* nvi_prev; struct TYPE_8__* nvi_next; } ;
typedef TYPE_3__ i_nvp_t ;


 TYPE_3__* NVPAIR2I_NVP (int *) ;

__attribute__((used)) static void
nvp_buf_unlink(nvlist_t *nvl, nvpair_t *nvp)
{
 nvpriv_t *priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv;
 i_nvp_t *curr = NVPAIR2I_NVP(nvp);




 if (priv->nvp_curr == curr)
  priv->nvp_curr = curr->nvi_next;

 if (curr == priv->nvp_list)
  priv->nvp_list = curr->nvi_next;
 else
  curr->nvi_prev->nvi_next = curr->nvi_next;

 if (curr == priv->nvp_last)
  priv->nvp_last = curr->nvi_prev;
 else
  curr->nvi_next->nvi_prev = curr->nvi_prev;
}
