
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct kmi_softc {int dummy; } ;
struct TYPE_4__ {struct kmi_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int KMIIR ;
 int KMIIR_RXINTR ;
 int KMI_CTX_LOCK_ASSERT () ;
 int pl050_kmi_read_4 (struct kmi_softc*,int ) ;

__attribute__((used)) static int
kmi_check(keyboard_t *kbd)
{
 struct kmi_softc *sc = kbd->kb_data;
 uint32_t reg;

 KMI_CTX_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 reg = pl050_kmi_read_4(sc, KMIIR);
 return (reg & KMIIR_RXINTR);
}
