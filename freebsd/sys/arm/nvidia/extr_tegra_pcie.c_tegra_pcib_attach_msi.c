
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_pcib_softc {int msi_intr_cookie; int msi_irq_res; int msi_page; } ;
typedef int device_t ;


 int AFI_INTR_MASK ;
 int AFI_INTR_MASK_MSI_MASK ;
 int AFI_MSI_EN_VEC (int) ;
 int AFI_MSI_REGS ;
 int AFI_MSI_VEC (int) ;
 int AFI_RD4 (struct tegra_pcib_softc*,int ) ;
 int AFI_WR4 (struct tegra_pcib_softc*,int ,int) ;
 int BUS_SPACE_MAXADDR ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int VM_MEMATTR_DEFAULT ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct tegra_pcib_softc*,int *) ;
 struct tegra_pcib_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int kmem_alloc_contig (int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ tegra_pcib_msi_attach (struct tegra_pcib_softc*) ;
 int tegra_pcib_msi_detach (struct tegra_pcib_softc*) ;
 int tegra_pcib_msi_intr ;
 int tegra_pcib_set_bar (struct tegra_pcib_softc*,int,int ,int ,int ,int ) ;
 int vtophys (int ) ;

__attribute__((used)) static int
tegra_pcib_attach_msi(device_t dev)
{
 struct tegra_pcib_softc *sc;
 uint32_t reg;
 int i, rv;

 sc = device_get_softc(dev);

 sc->msi_page = kmem_alloc_contig(PAGE_SIZE, M_WAITOK, 0,
     BUS_SPACE_MAXADDR, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);


 tegra_pcib_set_bar(sc, 9, vtophys(sc->msi_page), vtophys(sc->msi_page),
     PAGE_SIZE, 0);


 for (i = 0; i < AFI_MSI_REGS; i++) {
  AFI_WR4(sc, AFI_MSI_EN_VEC(i), 0);
  AFI_WR4(sc, AFI_MSI_VEC(i), 0xFFFFFFFF);
 }
 rv = bus_setup_intr(dev, sc->msi_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
     tegra_pcib_msi_intr, ((void*)0), sc, &sc->msi_intr_cookie);
 if (rv != 0) {
  device_printf(dev, "cannot setup MSI interrupt handler\n");
  rv = ENXIO;
  goto out;
 }

 if (tegra_pcib_msi_attach(sc) != 0) {
  device_printf(dev, "WARNING: unable to attach PIC\n");
  tegra_pcib_msi_detach(sc);
  goto out;
 }


 reg = AFI_RD4(sc, AFI_INTR_MASK);
 reg |= AFI_INTR_MASK_MSI_MASK;
 AFI_WR4(sc, AFI_INTR_MASK, reg);

out:
 return (rv);
}
