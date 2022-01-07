
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef size_t u_int ;
struct redist_pcpu {int lpi_enabled; int res; } ;
struct gicv3_its_softc {TYPE_1__** sc_its_cols; int sc_cpus; } ;
typedef int device_t ;
struct TYPE_3__ {size_t col_id; int col_target; } ;


 int CPU_ISSET (size_t,int *) ;
 int ENXIO ;
 int GICR_TYPER ;
 int GICR_TYPER_CPUNUM (int ) ;
 int GICR_TYPER_PLPIS ;
 int GITS_TYPER ;
 int GITS_TYPER_PTA ;
 size_t PCPU_GET (size_t) ;
 int device_get_parent (int ) ;
 int gic_its_read_8 (struct gicv3_its_softc*,int ) ;
 int gic_r_read_4 (int ,int ) ;
 int gic_r_read_8 (int ,int ) ;
 struct redist_pcpu* gicv3_get_redist (int ) ;
 int its_cmd_invall (int ,TYPE_1__*) ;
 int its_cmd_mapc (int ,TYPE_1__*,int) ;
 int its_init_cpu_lpi (int ,struct gicv3_its_softc*) ;
 int rman_get_virtual (int *) ;
 int vtophys (int ) ;

__attribute__((used)) static int
its_init_cpu(device_t dev, struct gicv3_its_softc *sc)
{
 device_t gicv3;
 vm_paddr_t target;
 u_int cpuid;
 struct redist_pcpu *rpcpu;

 gicv3 = device_get_parent(dev);
 cpuid = PCPU_GET(cpuid);
 if (!CPU_ISSET(cpuid, &sc->sc_cpus))
  return (0);


 if ((gic_r_read_4(gicv3, GICR_TYPER) & GICR_TYPER_PLPIS) == 0)
  return (ENXIO);

 rpcpu = gicv3_get_redist(dev);


 if (!rpcpu->lpi_enabled) {
  its_init_cpu_lpi(dev, sc);
  rpcpu->lpi_enabled = 1;
 }

 if ((gic_its_read_8(sc, GITS_TYPER) & GITS_TYPER_PTA) != 0) {

  target = vtophys(rman_get_virtual(&rpcpu->res));
 } else {

  target = GICR_TYPER_CPUNUM(gic_r_read_8(gicv3, GICR_TYPER));
 }

 sc->sc_its_cols[cpuid]->col_target = target;
 sc->sc_its_cols[cpuid]->col_id = cpuid;

 its_cmd_mapc(dev, sc->sc_its_cols[cpuid], 1);
 its_cmd_invall(dev, sc->sc_its_cols[cpuid]);

 return (0);
}
