
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ kb_callback; } ;
struct kmi_softc {int sc_flags; TYPE_2__ sc_kbd; } ;


 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int KMI_CTX_LOCK_ASSERT () ;
 int KMI_FLAG_POLLING ;
 scalar_t__ NOKEY ;
 scalar_t__ kmi_read_char_locked (TYPE_2__*,int ) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void
pl050_kmi_intr(void *arg)
{
 struct kmi_softc *sc = arg;
 uint32_t c;

 KMI_CTX_LOCK_ASSERT();

 if ((sc->sc_flags & KMI_FLAG_POLLING) != 0)
  return;

 if (KBD_IS_ACTIVE(&sc->sc_kbd) &&
     KBD_IS_BUSY(&sc->sc_kbd)) {

  (sc->sc_kbd.kb_callback.kc_func) (&sc->sc_kbd, KBDIO_KEYINPUT,
      sc->sc_kbd.kb_callback.kc_arg);
 } else {

  do {
   c = kmi_read_char_locked(&sc->sc_kbd, 0);
  } while (c != NOKEY);
 }

}
