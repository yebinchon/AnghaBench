
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_io_lock; } ;
struct aac_event {int ev_type; } ;
struct aac_command {int dummy; } ;



 int MA_OWNED ;
 int M_AACBUF ;
 int aac_add_event (struct aac_softc*,struct aac_event*) ;
 int aac_alloc_command (struct aac_softc*,struct aac_command**) ;
 int free (struct aac_event*,int ) ;
 int mtx_assert (int *,int ) ;
 int wakeup (void*) ;

__attribute__((used)) static void
aac_ioctl_event(struct aac_softc *sc, struct aac_event *event, void *arg)
{

 switch (event->ev_type) {
 case 128:
  mtx_assert(&sc->aac_io_lock, MA_OWNED);
  if (aac_alloc_command(sc, (struct aac_command **)arg)) {
   aac_add_event(sc, event);
   return;
  }
  free(event, M_AACBUF);
  wakeup(arg);
  break;
 default:
  break;
 }
}
