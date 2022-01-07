
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct armada_thermal_softc {int ctrl_res; } ;


 int A380_TSEN_CTRL_RESET ;
 int DELAY (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
armada380_tsen_init(struct armada_thermal_softc *sc)
{
 uint32_t tsen_ctrl;

 tsen_ctrl = bus_read_4(sc->ctrl_res, 0);
 if ((tsen_ctrl & A380_TSEN_CTRL_RESET) == 0) {
  tsen_ctrl |= A380_TSEN_CTRL_RESET;
  bus_write_4(sc->ctrl_res, 0, tsen_ctrl);
  DELAY(10000);
 }
}
