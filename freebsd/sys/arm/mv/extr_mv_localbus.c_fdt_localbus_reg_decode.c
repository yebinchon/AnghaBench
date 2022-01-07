
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct localbus_softc {TYPE_1__* sc_banks; int sc_dev; } ;
struct localbus_devinfo {int di_bank; int di_res; } ;
typedef int phandle_t ;
typedef int pcell_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ va; int mapped; } ;


 int ENXIO ;
 int MV_LOCALBUS_MAX_BANKS ;
 int OF_getprop_alloc_multi (int ,char*,int,void**) ;
 int OF_parent (int ) ;
 int OF_prop_free (int*) ;
 int SYS_RES_MEMORY ;
 int debugf (char*,int,scalar_t__,...) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 int fdt_data_get (void*,int) ;
 int fdt_data_to_res (int*,int,int,scalar_t__*,scalar_t__*) ;
 int resource_list_add (int *,int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 int resource_list_free (int *) ;

__attribute__((used)) static int
fdt_localbus_reg_decode(phandle_t node, struct localbus_softc *sc,
    struct localbus_devinfo *di)
{
 u_long start, end, count;
 pcell_t *reg, *regptr;
 pcell_t addr_cells, size_cells;
 int tuple_size, tuples;
 int i, rv, bank;

 if (fdt_addrsize_cells(OF_parent(node), &addr_cells, &size_cells) != 0)
  return (ENXIO);

 tuple_size = sizeof(pcell_t) * (addr_cells + size_cells);
 tuples = OF_getprop_alloc_multi(node, "reg", tuple_size, (void **)&reg);
 debugf("addr_cells = %d, size_cells = %d\n", addr_cells, size_cells);
 debugf("tuples = %d, tuple size = %d\n", tuples, tuple_size);
 if (tuples <= 0)

  return (0);

 regptr = reg;
 for (i = 0; i < tuples; i++) {

  bank = fdt_data_get((void *)regptr, 1);

  if (bank >= MV_LOCALBUS_MAX_BANKS) {
   device_printf(sc->sc_dev, "bank number [%d] out of "
       "range\n", bank);
   continue;
  }





  if (!(sc->sc_banks[bank].mapped)) {
   device_printf(sc->sc_dev, "device [%d]: missing memory "
       "mapping\n", bank);
   continue;
  }

  di->di_bank = bank;
  regptr += 1;


  rv = fdt_data_to_res(regptr, addr_cells - 1, size_cells, &start,
      &count);
  if (rv != 0) {
   resource_list_free(&di->di_res);
   goto out;
  }


  if (sc->sc_banks[bank].size < count) {
   device_printf(sc->sc_dev, "device [%d]: not enough "
       "memory reserved\n", bank);
   continue;
  }

  regptr += addr_cells - 1 + size_cells;


  start = sc->sc_banks[bank].va + start;
  end = start + count - 1;

  debugf("reg addr bank = %d, start = %lx, end = %lx, "
      "count = %lx\n", bank, start, end, count);


  resource_list_add(&di->di_res, SYS_RES_MEMORY, di->di_bank,
      start, end, count);
 }
 rv = 0;
out:
 OF_prop_free(reg);
 return (rv);
}
