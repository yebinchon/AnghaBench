
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pass_softc {int read_select; int done_queue; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;


 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int TAILQ_EMPTY (int *) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
passpoll(struct cdev *dev, int poll_events, struct thread *td)
{
 struct cam_periph *periph;
 struct pass_softc *softc;
 int revents;

 periph = (struct cam_periph *)dev->si_drv1;
 softc = (struct pass_softc *)periph->softc;

 revents = poll_events & (POLLOUT | POLLWRNORM);
 if ((poll_events & (POLLIN | POLLRDNORM)) != 0) {
  cam_periph_lock(periph);

  if (!TAILQ_EMPTY(&softc->done_queue)) {
   revents |= poll_events & (POLLIN | POLLRDNORM);
  }
  cam_periph_unlock(periph);
  if (revents == 0)
   selrecord(td, &softc->read_select);
 }

 return (revents);
}
