
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_dev; int aac_ev_cmfree; } ;
struct aac_event {int ev_type; } ;



 int AAC_EVENT_MASK ;
 int TAILQ_INSERT_TAIL (int *,struct aac_event*,int ) ;
 int device_printf (int ,char*,int) ;
 int ev_links ;

void
aac_add_event(struct aac_softc *sc, struct aac_event *event)
{

 switch (event->ev_type & AAC_EVENT_MASK) {
 case 128:
  TAILQ_INSERT_TAIL(&sc->aac_ev_cmfree, event, ev_links);
  break;
 default:
  device_printf(sc->aac_dev, "aac_add event: unknown event %d\n",
      event->ev_type);
  break;
 }
}
