
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_softc {int periph; int abort_queue; int user_ccb_queue; } ;
struct knote {scalar_t__ kn_hook; } ;


 int TAILQ_EMPTY (int *) ;
 int cam_periph_lock (int ) ;
 int cam_periph_unlock (int ) ;

__attribute__((used)) static int
targreadfilt(struct knote *kn, long hint)
{
 struct targ_softc *softc;
 int retval;

 softc = (struct targ_softc *)kn->kn_hook;
 cam_periph_lock(softc->periph);
 retval = !TAILQ_EMPTY(&softc->user_ccb_queue) ||
   !TAILQ_EMPTY(&softc->abort_queue);
 cam_periph_unlock(softc->periph);
 return (retval);
}
