
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_softc {int done_queue; } ;
struct knote {scalar_t__ kn_hook; } ;
struct cam_periph {scalar_t__ softc; } ;


 int MA_OWNED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int cam_periph_assert (struct cam_periph*,int ) ;

__attribute__((used)) static int
passreadfilt(struct knote *kn, long hint)
{
 struct cam_periph *periph;
 struct pass_softc *softc;
 int retval;

 periph = (struct cam_periph *)kn->kn_hook;
 softc = (struct pass_softc *)periph->softc;

 cam_periph_assert(periph, MA_OWNED);

 if (TAILQ_EMPTY(&softc->done_queue))
  retval = 0;
 else
  retval = 1;

 return (retval);
}
