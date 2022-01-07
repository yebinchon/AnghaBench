
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int nvp_stat; int * nvp_nva; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nv_alloc_t ;


 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static void
nv_priv_init(nvpriv_t *priv, nv_alloc_t *nva, uint32_t stat)
{
 bzero(priv, sizeof (nvpriv_t));

 priv->nvp_nva = nva;
 priv->nvp_stat = stat;
}
