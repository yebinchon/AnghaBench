
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xuio_t ;
struct TYPE_3__ {int cnt; int ** bufs; } ;
typedef TYPE_1__ dmu_xuio_t ;
typedef int arc_buf_t ;


 int ASSERT (int) ;
 TYPE_1__* XUIO_XUZC_PRIV (int *) ;

arc_buf_t *
dmu_xuio_arcbuf(xuio_t *xuio, int i)
{
 dmu_xuio_t *priv = XUIO_XUZC_PRIV(xuio);

 ASSERT(i < priv->cnt);
 return (priv->bufs[i]);
}
