
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ckb_softc {int sc_flags; int sc_poll_thread; } ;
struct TYPE_3__ {struct ckb_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int CKB_FLAG_POLLING ;
 int CKB_LOCK () ;
 int CKB_UNLOCK () ;
 int curthread ;

__attribute__((used)) static int
ckb_poll(keyboard_t *kbd, int on)
{
 struct ckb_softc *sc;

 sc = kbd->kb_data;

 CKB_LOCK();
 if (on) {
  sc->sc_flags |= CKB_FLAG_POLLING;
  sc->sc_poll_thread = curthread;
 } else {
  sc->sc_flags &= ~CKB_FLAG_POLLING;
 }
 CKB_UNLOCK();

 return (0);
}
