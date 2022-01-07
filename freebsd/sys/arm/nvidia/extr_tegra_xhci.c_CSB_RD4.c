
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_xhci_softc {int dummy; } ;


 int ARU_C11_CSBRANGE_ADDR (int ) ;
 int ARU_C11_CSBRANGE_PAGE (int ) ;
 int FPCI_RD4 (struct tegra_xhci_softc*,int ) ;
 int FPCI_WR4 (struct tegra_xhci_softc*,int ,int ) ;
 int XUSB_CFG_ARU_C11_CSBRANGE ;

__attribute__((used)) static uint32_t
CSB_RD4(struct tegra_xhci_softc *sc, uint32_t addr)
{

 FPCI_WR4(sc, XUSB_CFG_ARU_C11_CSBRANGE, ARU_C11_CSBRANGE_PAGE(addr));
 return (FPCI_RD4(sc, ARU_C11_CSBRANGE_ADDR(addr)));
}
