
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10_sramc_softc {int dummy; } ;


 int ENXIO ;
 int SRAM_CTL1_CFG ;
 struct a10_sramc_softc* a10_sramc_sc ;
 int sramc_read_4 (struct a10_sramc_softc*,int ) ;
 int sramc_write_4 (struct a10_sramc_softc*,int ,int) ;

int
a10_map_to_emac(void)
{
 struct a10_sramc_softc *sc = a10_sramc_sc;
 uint32_t reg_value;

 if (sc == ((void*)0))
  return (ENXIO);


 reg_value = sramc_read_4(sc, SRAM_CTL1_CFG);
 reg_value |= 0x5 << 2;
 sramc_write_4(sc, SRAM_CTL1_CFG, reg_value);

 return (0);
}
