
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xuio_t ;
struct TYPE_3__ {int cnt; int ** bufs; } ;
typedef TYPE_1__ dmu_xuio_t ;


 int ASSERT (int) ;
 TYPE_1__* XUIO_XUZC_PRIV (int *) ;

void
dmu_xuio_clear(xuio_t *xuio, int i)
{
 dmu_xuio_t *priv = XUIO_XUZC_PRIV(xuio);

 ASSERT(i < priv->cnt);
 priv->bufs[i] = ((void*)0);
}
