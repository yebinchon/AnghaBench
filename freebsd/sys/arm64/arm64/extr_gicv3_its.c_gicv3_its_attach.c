
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct gicv3_its_softc {int sc_irq_length; int sc_irq_base; TYPE_1__* sc_irqs; int sc_irq_alloc; int sc_its_dev_list; int ** sc_its_cols; int sc_cpus; int sc_its_cmd_lock; int sc_its_dev_lock; int * sc_its_res; } ;
typedef int device_t ;
struct TYPE_5__ {int iidr_mask; int iidr; int (* func ) (int ) ;int desc; } ;
struct TYPE_4__ {int gi_irq; int gi_isrc; } ;


 int CPU_COPY (int *,int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_ZERO (int *) ;
 int ENXIO ;
 int GIC_FIRST_LPI ;
 int GITS_CTLR ;
 int GITS_CTLR_EN ;
 int GITS_IIDR ;
 int MAXMEMDOM ;
 int MTX_SPIN ;
 int M_FIRSTFIT ;
 int M_GICV3_ITS ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int all_cpus ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_get_domain (int ,int*) ;
 int * cpuset_domain ;
 char* device_get_nameunit (int ) ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int gic_its_read_4 (struct gicv3_its_softc*,int ) ;
 int gic_its_write_4 (struct gicv3_its_softc*,int ,int) ;
 int gicv3_get_nirqs (int ) ;
 int gicv3_its_cmdq_init (struct gicv3_its_softc*) ;
 int gicv3_its_conftable_init (struct gicv3_its_softc*) ;
 int gicv3_its_pendtables_init (struct gicv3_its_softc*) ;
 int gicv3_its_table_init (int ,struct gicv3_its_softc*) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,int) ;
 int its_init_cpu (int ,struct gicv3_its_softc*) ;
 TYPE_2__* its_quirks ;
 void* malloc (int,int ,int) ;
 int mp_maxid ;
 int mtx_init (int *,char*,int *,int ) ;
 int nitems (TYPE_2__*) ;
 int stub1 (int ) ;
 int vmem_create (char*,int ,int,int,int,int) ;

__attribute__((used)) static int
gicv3_its_attach(device_t dev)
{
 struct gicv3_its_softc *sc;
 const char *name;
 uint32_t iidr;
 int domain, err, i, rid;

 sc = device_get_softc(dev);

 sc->sc_irq_length = gicv3_get_nirqs(dev);
 sc->sc_irq_base = GIC_FIRST_LPI;
 sc->sc_irq_base += device_get_unit(dev) * sc->sc_irq_length;

 rid = 0;
 sc->sc_its_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_its_res == ((void*)0)) {
  device_printf(dev, "Could not allocate memory\n");
  return (ENXIO);
 }

 iidr = gic_its_read_4(sc, GITS_IIDR);
 for (i = 0; i < nitems(its_quirks); i++) {
  if ((iidr & its_quirks[i].iidr_mask) == its_quirks[i].iidr) {
   if (bootverbose) {
    device_printf(dev, "Applying %s\n",
        its_quirks[i].desc);
   }
   its_quirks[i].func(dev);
   break;
  }
 }


 err = gicv3_its_table_init(dev, sc);
 if (err != 0)
  return (err);


 mtx_init(&sc->sc_its_dev_lock, "ITS device lock", ((void*)0), MTX_SPIN);


 mtx_init(&sc->sc_its_cmd_lock, "ITS cmd lock", ((void*)0), MTX_SPIN);

 CPU_ZERO(&sc->sc_cpus);
 if (bus_get_domain(dev, &domain) == 0) {
  if (domain < MAXMEMDOM)
   CPU_COPY(&cpuset_domain[domain], &sc->sc_cpus);
 } else {
  CPU_COPY(&all_cpus, &sc->sc_cpus);
 }


 gicv3_its_cmdq_init(sc);


 for (int cpu = 0; cpu <= mp_maxid; cpu++)
  if (CPU_ISSET(cpu, &sc->sc_cpus) != 0)
   sc->sc_its_cols[cpu] = malloc(
       sizeof(*sc->sc_its_cols[0]), M_GICV3_ITS,
       M_WAITOK | M_ZERO);
  else
   sc->sc_its_cols[cpu] = ((void*)0);


 gic_its_write_4(sc, GITS_CTLR,
     gic_its_read_4(sc, GITS_CTLR) | GITS_CTLR_EN);


 gicv3_its_conftable_init(sc);


 gicv3_its_pendtables_init(sc);


 its_init_cpu(dev, sc);

 TAILQ_INIT(&sc->sc_its_dev_list);







 sc->sc_irq_alloc = vmem_create("GICv3 ITS IRQs", 0,
     gicv3_get_nirqs(dev), 1, 1, M_FIRSTFIT | M_WAITOK);

 sc->sc_irqs = malloc(sizeof(*sc->sc_irqs) * sc->sc_irq_length,
     M_GICV3_ITS, M_WAITOK | M_ZERO);
 name = device_get_nameunit(dev);
 for (i = 0; i < sc->sc_irq_length; i++) {
  sc->sc_irqs[i].gi_irq = i;
  err = intr_isrc_register(&sc->sc_irqs[i].gi_isrc, dev, 0,
      "%s,%u", name, i);
 }

 return (0);
}
