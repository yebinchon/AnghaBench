
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef void* vm_paddr_t ;
typedef int uint32_t ;
struct devmap_entry {scalar_t__ pd_size; void* pd_pa; int pd_va; } ;
typedef int ranges ;
typedef int phandle_t ;
typedef int pcell_t ;
struct TYPE_4__ {int mapped; scalar_t__ size; void* pa; int va; } ;
struct TYPE_3__ {scalar_t__ bank; scalar_t__ size; int va; } ;


 int EINVAL ;
 int ERANGE ;
 int MIN (int,int) ;
 int MV_LOCALBUS_MAX_BANKS ;
 int MV_LOCALBUS_MAX_BANK_CELLS ;
 int OF_getprop (int ,char*,int *,int) ;
 scalar_t__ fdt_addrsize_cells (int ,int*,int*) ;
 void* fdt_data_get (void*,int) ;
 int fdt_parent_addr_cells (int ) ;
 TYPE_2__* localbus_banks ;
 TYPE_1__* localbus_virtmap ;

int
fdt_localbus_devmap(phandle_t dt_node, struct devmap_entry *fdt_devmap,
    int banks_max_num, int *banks_added)
{
 pcell_t ranges[MV_LOCALBUS_MAX_BANKS * MV_LOCALBUS_MAX_BANK_CELLS];
 pcell_t *rangesptr;
 uint32_t tuple_size, bank;
 vm_paddr_t offset;
 vm_size_t size;
 int dev_num, addr_cells, size_cells, par_addr_cells, va_index, i, j, k;

 if ((fdt_addrsize_cells(dt_node, &addr_cells, &size_cells)) != 0)
  return (EINVAL);

 par_addr_cells = fdt_parent_addr_cells(dt_node);
 if (par_addr_cells > 2) {




  return (ERANGE);
 }

 tuple_size = (addr_cells + par_addr_cells + size_cells);
 if (tuple_size > MV_LOCALBUS_MAX_BANK_CELLS)
  return (ERANGE);

 tuple_size *= sizeof(pcell_t);

 dev_num = OF_getprop(dt_node, "ranges", ranges, sizeof(ranges));
  if (dev_num <= 0)
  return (EINVAL);


  dev_num = dev_num / tuple_size;





  dev_num = MIN(dev_num, banks_max_num);

  rangesptr = &ranges[0];
  j = 0;


 for (i = 0; i < dev_num; i++) {


  bank = fdt_data_get((void *)rangesptr, 1);
  rangesptr += 1;

  if (bank > MV_LOCALBUS_MAX_BANKS) {

   rangesptr += ((addr_cells - 1) + par_addr_cells +
       size_cells);
   continue;
  }


  va_index = -1;
  for (k = 0; localbus_virtmap[k].bank >= 0; k++) {
   if (localbus_virtmap[k].bank == bank) {
    va_index = k;
    break;
   }
  }


  if (va_index == -1) {
   rangesptr += ((addr_cells - 1) + par_addr_cells +
       size_cells);
   continue;
  }


  rangesptr += (addr_cells - 1);


  offset = fdt_data_get((void *)rangesptr, par_addr_cells);
  rangesptr += par_addr_cells;


  size = fdt_data_get((void *)rangesptr, size_cells);
  rangesptr += size_cells;

  if (size > localbus_virtmap[va_index].size) {

   continue;
  }

  fdt_devmap[j].pd_va = localbus_virtmap[va_index].va;
  fdt_devmap[j].pd_pa = offset;
  fdt_devmap[j].pd_size = size;


  localbus_banks[bank].va = fdt_devmap[j].pd_va;
  localbus_banks[bank].pa = fdt_devmap[j].pd_pa;
  localbus_banks[bank].size = fdt_devmap[j].pd_size;
  localbus_banks[bank].mapped = 1;

  j++;
 }

 *banks_added = j;
 return (0);
}
