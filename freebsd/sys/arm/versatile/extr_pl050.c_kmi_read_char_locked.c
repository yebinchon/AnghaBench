
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct kmi_softc {int dummy; } ;
struct TYPE_4__ {int kb_count; struct kmi_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int KMIDATA ;
 int KMIIR ;
 int KMIIR_RXINTR ;
 int KMI_CTX_LOCK_ASSERT () ;
 int NOKEY ;
 int pl050_kmi_read_4 (struct kmi_softc*,int ) ;

__attribute__((used)) static uint32_t
kmi_read_char_locked(keyboard_t *kbd, int wait)
{
 struct kmi_softc *sc = kbd->kb_data;
 uint32_t reg, data;

 KMI_CTX_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (NOKEY);

 reg = pl050_kmi_read_4(sc, KMIIR);
 if (reg & KMIIR_RXINTR) {
  data = pl050_kmi_read_4(sc, KMIDATA);
  return (data);
 }

 ++kbd->kb_count;
 return (NOKEY);
}
