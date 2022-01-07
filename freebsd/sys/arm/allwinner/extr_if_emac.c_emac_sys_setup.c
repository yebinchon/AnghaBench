
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_softc {int emac_dev; int emac_clk; } ;


 int a10_map_to_emac () ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
emac_sys_setup(struct emac_softc *sc)
{
 int error;


 error = clk_get_by_ofw_index(sc->emac_dev, 0, 0, &sc->emac_clk);
 if (error != 0) {
  device_printf(sc->emac_dev, "cannot get clock\n");
  return (error);
 }
 error = clk_enable(sc->emac_clk);
 if (error != 0) {
  device_printf(sc->emac_dev, "cannot enable clock\n");
  return (error);
 }


 a10_map_to_emac();

 return (0);
}
