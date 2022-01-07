
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kmi_softc {int sc_flags; int sc_poll_thread; } ;
struct TYPE_3__ {struct kmi_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KMI_FLAG_POLLING ;
 int KMI_LOCK () ;
 int KMI_UNLOCK () ;
 int curthread ;

__attribute__((used)) static int
kmi_poll(keyboard_t *kbd, int on)
{
 struct kmi_softc *sc = kbd->kb_data;

 KMI_LOCK();
 if (on) {
  sc->sc_flags |= KMI_FLAG_POLLING;
  sc->sc_poll_thread = curthread;
 } else {
  sc->sc_flags &= ~KMI_FLAG_POLLING;
 }
 KMI_UNLOCK();

 return (0);
}
