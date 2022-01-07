
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mbox_softc {int* have_message; } ;


 int MBOX_LOCK (struct bcm_mbox_softc*) ;
 int MBOX_UNLOCK (struct bcm_mbox_softc*) ;
 int REG_STATUS ;
 int STATUS_EMPTY ;
 scalar_t__ bcm_mbox_read_msg (struct bcm_mbox_softc*,int*) ;
 int mbox_read_4 (struct bcm_mbox_softc*,int ) ;
 int wakeup (int*) ;

__attribute__((used)) static void
bcm_mbox_intr(void *arg)
{
 struct bcm_mbox_softc *sc = arg;
 int chan;

 MBOX_LOCK(sc);
 while (!(mbox_read_4(sc, REG_STATUS) & STATUS_EMPTY))
  if (bcm_mbox_read_msg(sc, &chan) == 0) {
   sc->have_message[chan] = 1;
   wakeup(&sc->have_message[chan]);
  }
 MBOX_UNLOCK(sc);
}
