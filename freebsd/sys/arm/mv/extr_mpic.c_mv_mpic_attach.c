
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_mpic_softc {int ** mpic_res; int nirqs; void* drbl_bsh; void* drbl_bst; void* cpu_bsh; void* cpu_bst; void* mpic_bsh; void* mpic_bst; int intr_hand; int mtx; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_CLK ;
 scalar_t__ MPIC_CPU (int) ;
 int MPIC_CPU_READ (struct mv_mpic_softc*,scalar_t__) ;
 int MPIC_CPU_WRITE (struct mv_mpic_softc*,scalar_t__,int) ;
 scalar_t__ MPIC_CTP ;
 int MPIC_CTRL ;
 int MPIC_CTRL_NIRQS (int ) ;
 scalar_t__ MPIC_LOCAL_MASK ;
 int MPIC_READ (struct mv_mpic_softc*,int ) ;
 int MPIC_WRITE (struct mv_mpic_softc*,int ,int) ;
 int MTX_SPIN ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_device (int ) ;
 int OF_xref_from_node (int ) ;
 int bus_alloc_resources (int ,int ,int **) ;
 int bus_release_resources (int ,int ,int **) ;
 int bus_setup_intr (int ,int *,int ,int ,int *,struct mv_mpic_softc*,int *) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * intr_pic_register (int ,int ) ;
 int mp_ncpus ;
 int mpic_intr ;
 int mpic_unmask_msi () ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ mv_mpic_register_isrcs (struct mv_mpic_softc*) ;
 struct mv_mpic_softc* mv_mpic_sc ;
 int mv_mpic_spec ;
 int ofw_bus_get_node (int ) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
mv_mpic_attach(device_t dev)
{
 struct mv_mpic_softc *sc;
 int error;
 uint32_t val;
 int cpu;

 sc = (struct mv_mpic_softc *)device_get_softc(dev);

 if (mv_mpic_sc != ((void*)0))
  return (ENXIO);
 mv_mpic_sc = sc;

 sc->sc_dev = dev;

 mtx_init(&sc->mtx, "MPIC lock", ((void*)0), MTX_SPIN);

 error = bus_alloc_resources(dev, mv_mpic_spec, sc->mpic_res);
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }
 if (sc->mpic_res[3] == ((void*)0))
  device_printf(dev, "No interrupt to use.\n");
 else
  bus_setup_intr(dev, sc->mpic_res[3], INTR_TYPE_CLK,
      mpic_intr, ((void*)0), sc, &sc->intr_hand);

 sc->mpic_bst = rman_get_bustag(sc->mpic_res[0]);
 sc->mpic_bsh = rman_get_bushandle(sc->mpic_res[0]);

 sc->cpu_bst = rman_get_bustag(sc->mpic_res[1]);
 sc->cpu_bsh = rman_get_bushandle(sc->mpic_res[1]);

 if (sc->mpic_res[2] != ((void*)0)) {

  sc->drbl_bst = rman_get_bustag(sc->mpic_res[2]);
  sc->drbl_bsh = rman_get_bushandle(sc->mpic_res[2]);
 }

 MPIC_WRITE(mv_mpic_sc, MPIC_CTRL, 1);
 MPIC_CPU_WRITE(mv_mpic_sc, MPIC_CTP, 0);

 val = MPIC_READ(mv_mpic_sc, MPIC_CTRL);
 sc->nirqs = MPIC_CTRL_NIRQS(val);

 if (mv_mpic_register_isrcs(sc) != 0) {
  device_printf(dev, "could not register PIC ISRCs\n");
  bus_release_resources(dev, mv_mpic_spec, sc->mpic_res);
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(ofw_bus_get_node(dev)), dev);

 if (intr_pic_register(dev, OF_xref_from_device(dev)) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  bus_release_resources(dev, mv_mpic_spec, sc->mpic_res);
  return (ENXIO);
 }

 mpic_unmask_msi();


 for (cpu = 0; cpu < mp_ncpus; cpu++)
  MPIC_CPU_WRITE(mv_mpic_sc, MPIC_CPU(cpu) + MPIC_LOCAL_MASK,
      (1 << cpu) | MPIC_CPU_READ(mv_mpic_sc,
      MPIC_CPU(cpu) + MPIC_LOCAL_MASK));

 return (0);
}
