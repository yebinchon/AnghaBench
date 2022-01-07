
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bdev; } ;
struct ehci_softc {TYPE_1__ sc_bus; } ;


 int EHCI_UM_CM ;
 int EHCI_UM_CM_HOST ;
 int EHCI_USBMODE_LPM ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int EOWRITE4 (struct ehci_softc*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
tegra_ehci_post_reset(struct ehci_softc *ehci_softc)
{
 uint32_t usbmode;


 usbmode = EOREAD4(ehci_softc, EHCI_USBMODE_LPM);
 usbmode &= ~EHCI_UM_CM;
 usbmode |= EHCI_UM_CM_HOST;
 device_printf(ehci_softc->sc_bus.bdev, "set host controller mode\n");
 EOWRITE4(ehci_softc, EHCI_USBMODE_LPM, usbmode);
}
