
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xuio_t ;
struct TYPE_3__ {int cnt; } ;
typedef TYPE_1__ dmu_xuio_t ;


 TYPE_1__* XUIO_XUZC_PRIV (int *) ;

int
dmu_xuio_cnt(xuio_t *xuio)
{
 dmu_xuio_t *priv = XUIO_XUZC_PRIV(xuio);
 return (priv->cnt);
}
