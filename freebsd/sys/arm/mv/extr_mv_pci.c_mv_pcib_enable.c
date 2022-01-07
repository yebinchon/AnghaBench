
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_pcib_softc {scalar_t__ sc_skip_enable_procedure; scalar_t__ sc_mode; int sc_bsh; int sc_bst; } ;


 int CPU_CONTROL ;
 int CPU_CONTROL_PCIE_DISABLE (int) ;
 int DELAY (int) ;
 scalar_t__ MV_MODE_ROOT ;
 int PCIE_LINK_TIMEOUT ;
 int PCIE_REG_STATUS ;
 int PCIE_STATUS_LINK_DOWN ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_COMMAND ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int read_cpu_ctrl (int ) ;
 int write_cpu_ctrl (int ,int) ;

__attribute__((used)) static void
mv_pcib_enable(struct mv_pcib_softc *sc, uint32_t unit)
{
 uint32_t val;
 int timeout;

 if (sc->sc_skip_enable_procedure)
  goto pcib_enable_root_mode;




 if ((sc->sc_skip_enable_procedure == 0) &&
     (read_cpu_ctrl(CPU_CONTROL) & CPU_CONTROL_PCIE_DISABLE(unit))) {
  write_cpu_ctrl(CPU_CONTROL, read_cpu_ctrl(CPU_CONTROL) &
      ~(CPU_CONTROL_PCIE_DISABLE(unit)));

  timeout = PCIE_LINK_TIMEOUT;
  val = bus_space_read_4(sc->sc_bst, sc->sc_bsh,
      PCIE_REG_STATUS);
  while (((val & PCIE_STATUS_LINK_DOWN) == 1) && (timeout > 0)) {
   DELAY(1000);
   timeout -= 1000;
   val = bus_space_read_4(sc->sc_bst, sc->sc_bsh,
       PCIE_REG_STATUS);
  }
 }

pcib_enable_root_mode:
 if (sc->sc_mode == MV_MODE_ROOT) {



  val = bus_space_read_4(sc->sc_bst, sc->sc_bsh, PCIR_COMMAND);
  val |= PCIM_CMD_SERRESPEN | PCIM_CMD_BUSMASTEREN |
      PCIM_CMD_MEMEN | PCIM_CMD_PORTEN;
  bus_space_write_4(sc->sc_bst, sc->sc_bsh, PCIR_COMMAND, val);
 }
}
