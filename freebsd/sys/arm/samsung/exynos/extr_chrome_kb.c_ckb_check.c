
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ckb_softc {int sc_flags; int cols; scalar_t__* scan_local; scalar_t__* scan; scalar_t__ sc_repeating; } ;
struct TYPE_4__ {struct ckb_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int CKB_CTX_LOCK_ASSERT () ;
 int CKB_FLAG_POLLING ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;

__attribute__((used)) static int
ckb_check(keyboard_t *kbd)
{
 struct ckb_softc *sc;
 int i;

 sc = kbd->kb_data;

 CKB_CTX_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 if (sc->sc_flags & CKB_FLAG_POLLING) {
  return (1);
 }

 for (i = 0; i < sc->cols; i++)
  if (sc->scan_local[i] != sc->scan[i]) {
   return (1);
  }

 if (sc->sc_repeating)
  return (1);

 return (0);
}
