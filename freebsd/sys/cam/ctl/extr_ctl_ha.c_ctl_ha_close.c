
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_snd; int so_rcv; } ;
struct ha_softc {scalar_t__ ha_listen; scalar_t__ ha_connect; struct socket* ha_so; scalar_t__ ha_receiving; int * ha_sending; int ha_sendq; scalar_t__ ha_connected; scalar_t__ ha_disconnect; } ;


 int CTL_HA_CHAN_MAX ;
 int CTL_HA_EVT_LINK_CHANGE ;
 int CTL_HA_LINK_OFFLINE ;
 int CTL_HA_LINK_UNKNOWN ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_MTX (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int SO_SND ;
 int ctl_ha_evt (struct ha_softc*,int ,int ,int ) ;
 int hz ;
 int m_freem (int *) ;
 int mbufq_drain (int *) ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;
 int pause (char*,int) ;
 int soclose (struct socket*) ;
 int soupcall_clear (struct socket*,int ) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
ctl_ha_close(struct ha_softc *softc)
{
 struct socket *so = softc->ha_so;
 int report = 0;

 if (softc->ha_connected || softc->ha_disconnect) {
  softc->ha_connected = 0;
  mbufq_drain(&softc->ha_sendq);
  m_freem(softc->ha_sending);
  softc->ha_sending = ((void*)0);
  report = 1;
 }
 if (so) {
  SOCKBUF_LOCK(&so->so_rcv);
  soupcall_clear(so, SO_RCV);
  while (softc->ha_receiving) {
   wakeup(&softc->ha_receiving);
   msleep(&softc->ha_receiving, SOCKBUF_MTX(&so->so_rcv),
       0, "ha_rx exit", 0);
  }
  SOCKBUF_UNLOCK(&so->so_rcv);
  SOCKBUF_LOCK(&so->so_snd);
  soupcall_clear(so, SO_SND);
  SOCKBUF_UNLOCK(&so->so_snd);
  softc->ha_so = ((void*)0);
  if (softc->ha_connect)
   pause("reconnect", hz / 2);
  soclose(so);
 }
 if (report) {
  ctl_ha_evt(softc, CTL_HA_CHAN_MAX, CTL_HA_EVT_LINK_CHANGE,
      (softc->ha_connect || softc->ha_listen) ?
      CTL_HA_LINK_UNKNOWN : CTL_HA_LINK_OFFLINE);
 }
}
