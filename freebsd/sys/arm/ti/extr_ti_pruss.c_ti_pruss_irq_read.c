
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct uio {size_t const uio_resid; } ;
struct TYPE_3__ {size_t cnt; size_t idx; } ;
struct TYPE_4__ {int * ts; TYPE_1__ ctl; } ;
struct ti_pruss_irqsc {TYPE_2__ tstamps; int sc_mtx; } ;
struct ctl {size_t cnt; size_t idx; } ;
struct cdev {struct ti_pruss_irqsc* si_drv1; } ;
typedef scalar_t__ ssize_t ;


 int EINVAL ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int PCATCH ;
 int PDROP ;
 size_t TI_TS_ARRAY ;
 int atomic_add_32 (size_t*,int) ;
 int devfs_get_cdevpriv (void**) ;
 int msleep (struct ti_pruss_irqsc*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uiomove (int *,size_t const,struct uio*) ;

__attribute__((used)) static int
ti_pruss_irq_read(struct cdev *cdev, struct uio *uio, int ioflag)
{
 const size_t ts_len = sizeof(uint64_t);
 struct ti_pruss_irqsc* irq;
 struct ctl* priv;
 int error = 0;
 size_t idx;
 ssize_t level;

 irq = cdev->si_drv1;

 if (uio->uio_resid < ts_len)
  return (EINVAL);

 error = devfs_get_cdevpriv((void**)&priv);
 if (error)
     return (error);

 mtx_lock(&irq->sc_mtx);

 if (irq->tstamps.ctl.cnt - priv->cnt > TI_TS_ARRAY)
 {
  priv->cnt = irq->tstamps.ctl.cnt;
  priv->idx = irq->tstamps.ctl.idx;
  mtx_unlock(&irq->sc_mtx);
  return (ENXIO);
 }

 do {
  idx = priv->idx;
  level = irq->tstamps.ctl.idx - idx;
  if (level < 0)
   level += TI_TS_ARRAY;

  if (level == 0) {
   if (ioflag & O_NONBLOCK) {
    mtx_unlock(&irq->sc_mtx);
    return (EWOULDBLOCK);
   }

   error = msleep(irq, &irq->sc_mtx, PCATCH | PDROP,
    "pruirq", 0);
   if (error)
    return error;

   mtx_lock(&irq->sc_mtx);
  }
 }while(level == 0);

 mtx_unlock(&irq->sc_mtx);

 error = uiomove(&irq->tstamps.ts[idx], ts_len, uio);

 if (++idx == TI_TS_ARRAY)
  idx = 0;
 priv->idx = idx;

 atomic_add_32(&priv->cnt, 1);

 return (error);
}
