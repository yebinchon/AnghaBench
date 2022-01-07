
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pt_softc {int io_timeout; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;


 int cam_periph_ioctl (struct cam_periph*,int,scalar_t__,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int pterror ;

__attribute__((used)) static int
ptioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 struct cam_periph *periph;
 struct pt_softc *softc;
 int error = 0;

 periph = (struct cam_periph *)dev->si_drv1;
 softc = (struct pt_softc *)periph->softc;

 cam_periph_lock(periph);

 switch(cmd) {
 case 129:
  if (softc->io_timeout >= 1000)
   *(int *)addr = softc->io_timeout / 1000;
  else
   *(int *)addr = 0;
  break;
 case 128:
  if (*(int *)addr < 1) {
   error = EINVAL;
   break;
  }

  softc->io_timeout = *(int *)addr * 1000;

  break;
 default:
  error = cam_periph_ioctl(periph, cmd, addr, pterror);
  break;
 }

 cam_periph_unlock(periph);

 return(error);
}
