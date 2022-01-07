
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kmi_softc {int sc_flags; scalar_t__ sc_accents; int sc_state; } ;
struct TYPE_3__ {struct kmi_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KMI_CTX_LOCK_ASSERT () ;
 int KMI_FLAG_COMPOSE ;
 int KMI_FLAG_POLLING ;
 int LOCK_MASK ;

__attribute__((used)) static void
kmi_clear_state(keyboard_t *kbd)
{
 struct kmi_softc *sc = kbd->kb_data;

 KMI_CTX_LOCK_ASSERT();

 sc->sc_flags &= ~(KMI_FLAG_COMPOSE | KMI_FLAG_POLLING);
 sc->sc_state &= LOCK_MASK;
 sc->sc_accents = 0;
}
