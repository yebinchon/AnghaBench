
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; size_t uio_resid; int uio_td; int uio_segflg; int uio_rw; struct iovec* uio_iov; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct ha_softc {int ha_disconnect; int ha_wakeup; int ha_lock; scalar_t__ ha_connected; int ha_so; } ;
typedef int ctl_ha_status ;
typedef int ctl_ha_channel ;


 int CTL_HA_STATUS_DISCONNECT ;
 int CTL_HA_STATUS_ERROR ;
 int CTL_HA_STATUS_SUCCESS ;
 int MSG_DONTWAIT ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int curthread ;
 struct ha_softc ha_softc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int soreceive (int ,int *,struct uio*,int *,int *,int*) ;
 int wakeup (int*) ;

ctl_ha_status
ctl_ha_msg_recv(ctl_ha_channel channel, void *addr, size_t len,
  int wait)
{
 struct ha_softc *softc = &ha_softc;
 struct uio uio;
 struct iovec iov;
 int error, flags;

 if (!softc->ha_connected)
  return (CTL_HA_STATUS_DISCONNECT);

 iov.iov_base = addr;
 iov.iov_len = len;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_rw = UIO_READ;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_td = curthread;
 uio.uio_resid = len;
 flags = wait ? 0 : MSG_DONTWAIT;
 error = soreceive(softc->ha_so, ((void*)0), &uio, ((void*)0), ((void*)0), &flags);
 if (error == 0)
  return (CTL_HA_STATUS_SUCCESS);


 mtx_lock(&softc->ha_lock);
 if (softc->ha_connected) {
  softc->ha_disconnect = 1;
  softc->ha_wakeup = 1;
  wakeup(&softc->ha_wakeup);
 }
 mtx_unlock(&softc->ha_lock);
 return (CTL_HA_STATUS_ERROR);
}
