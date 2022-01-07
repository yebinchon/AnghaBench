
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thunder_pem_softc {int id; int dev; int reg_bsh; int reg_bst; } ;


 int DELAY (int) ;
 int ENXIO ;
 int PCIERC_CFG032 ;
 int PEM_CFG_LINK_MASK ;
 int PEM_CFG_LINK_RDY ;
 int PEM_CTL_STATUS ;
 int PEM_LINK_DLLA ;
 int PEM_LINK_ENABLE ;
 int PEM_LINK_LT ;
 int PEM_ON_REG ;
 int bus_space_read_8 (int ,int ,int ) ;
 int bus_space_write_8 (int ,int ,int ,int) ;
 int device_printf (int ,char*,int ) ;
 int thunder_pem_config_reg_read (struct thunder_pem_softc*,int ) ;

__attribute__((used)) static int
thunder_pem_link_init(struct thunder_pem_softc *sc)
{
 uint64_t regval;


 regval = bus_space_read_8(sc->reg_bst, sc->reg_bsh, PEM_ON_REG);
 if ((regval & PEM_CFG_LINK_MASK) != PEM_CFG_LINK_RDY) {
  device_printf(sc->dev, "PEM%d is not ON\n", sc->id);
  return (ENXIO);
 }

 regval = bus_space_read_8(sc->reg_bst, sc->reg_bsh, PEM_CTL_STATUS);
 regval |= PEM_LINK_ENABLE;
 bus_space_write_8(sc->reg_bst, sc->reg_bsh, PEM_CTL_STATUS, regval);


 DELAY(1000);

 regval = thunder_pem_config_reg_read(sc, PCIERC_CFG032);

 if (((regval & PEM_LINK_DLLA) == 0) || ((regval & PEM_LINK_LT) != 0)) {
  device_printf(sc->dev, "PCIe RC: Port %d Link Timeout\n",
      sc->id);
  return (ENXIO);
 }

 return (0);
}
