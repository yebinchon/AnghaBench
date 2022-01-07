
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nranges; TYPE_1__* ranges; } ;
struct arm_gic_fdt_softc {int addr_cells; int size_cells; TYPE_2__ base; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int host_cells ;
typedef int cell_t ;
struct TYPE_3__ {int bus; int host; int size; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int OF_parent (int ) ;
 int free (int*,int ) ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static int
arm_gic_fill_ranges(phandle_t node, struct arm_gic_fdt_softc *sc)
{
 pcell_t host_cells;
 cell_t *base_ranges;
 ssize_t nbase_ranges;
 int i, j, k;

 host_cells = 1;
 OF_getencprop(OF_parent(node), "#address-cells", &host_cells,
     sizeof(host_cells));
 sc->addr_cells = 2;
 OF_getencprop(node, "#address-cells", &sc->addr_cells,
     sizeof(sc->addr_cells));
 sc->size_cells = 2;
 OF_getencprop(node, "#size-cells", &sc->size_cells,
     sizeof(sc->size_cells));

 nbase_ranges = OF_getproplen(node, "ranges");
 if (nbase_ranges < 0)
  return (-1);
 sc->base.nranges = nbase_ranges / sizeof(cell_t) /
     (sc->addr_cells + host_cells + sc->size_cells);
 if (sc->base.nranges == 0)
  return (0);

 sc->base.ranges = malloc(sc->base.nranges * sizeof(sc->base.ranges[0]),
     M_DEVBUF, M_WAITOK);
 base_ranges = malloc(nbase_ranges, M_DEVBUF, M_WAITOK);
 OF_getencprop(node, "ranges", base_ranges, nbase_ranges);

 for (i = 0, j = 0; i < sc->base.nranges; i++) {
  sc->base.ranges[i].bus = 0;
  for (k = 0; k < sc->addr_cells; k++) {
   sc->base.ranges[i].bus <<= 32;
   sc->base.ranges[i].bus |= base_ranges[j++];
  }
  sc->base.ranges[i].host = 0;
  for (k = 0; k < host_cells; k++) {
   sc->base.ranges[i].host <<= 32;
   sc->base.ranges[i].host |= base_ranges[j++];
  }
  sc->base.ranges[i].size = 0;
  for (k = 0; k < sc->size_cells; k++) {
   sc->base.ranges[i].size <<= 32;
   sc->base.ranges[i].size |= base_ranges[j++];
  }
 }

 free(base_ranges, M_DEVBUF);
 return (sc->base.nranges);
}
