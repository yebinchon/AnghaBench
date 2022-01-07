
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct targ_softc {int read_select; int periph; int abort_queue; int user_ccb_queue; } ;
struct cdev {int dummy; } ;


 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int TAILQ_EMPTY (int *) ;
 int cam_periph_lock (int ) ;
 int cam_periph_unlock (int ) ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
targpoll(struct cdev *dev, int poll_events, struct thread *td)
{
 struct targ_softc *softc;
 int revents;

 devfs_get_cdevpriv((void **)&softc);


 revents = poll_events & (POLLOUT | POLLWRNORM);
 if ((poll_events & (POLLIN | POLLRDNORM)) != 0) {

  cam_periph_lock(softc->periph);
  if (!TAILQ_EMPTY(&softc->user_ccb_queue) ||
      !TAILQ_EMPTY(&softc->abort_queue)) {
   revents |= poll_events & (POLLIN | POLLRDNORM);
  }
  cam_periph_unlock(softc->periph);

  if (revents == 0)
   selrecord(td, &softc->read_select);
 }

 return (revents);
}
