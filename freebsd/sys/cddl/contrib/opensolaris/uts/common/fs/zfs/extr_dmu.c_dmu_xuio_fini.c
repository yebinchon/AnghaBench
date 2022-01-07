
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xuio_t ;
typedef int iovec_t ;
struct TYPE_4__ {int cnt; struct TYPE_4__* bufs; struct TYPE_4__* iovp; } ;
typedef TYPE_1__ dmu_xuio_t ;
typedef int arc_buf_t ;


 scalar_t__ UIO_READ ;
 int XUIOSTAT_INCR (int ,int) ;
 TYPE_1__* XUIO_XUZC_PRIV (int *) ;
 scalar_t__ XUIO_XUZC_RW (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int xuiostat_onloan_rbuf ;
 int xuiostat_onloan_wbuf ;

void
dmu_xuio_fini(xuio_t *xuio)
{
 dmu_xuio_t *priv = XUIO_XUZC_PRIV(xuio);
 int nblk = priv->cnt;

 kmem_free(priv->iovp, nblk * sizeof (iovec_t));
 kmem_free(priv->bufs, nblk * sizeof (arc_buf_t *));
 kmem_free(priv, sizeof (dmu_xuio_t));

 if (XUIO_XUZC_RW(xuio) == UIO_READ)
  XUIOSTAT_INCR(xuiostat_onloan_rbuf, -nblk);
 else
  XUIOSTAT_INCR(xuiostat_onloan_wbuf, -nblk);
}
