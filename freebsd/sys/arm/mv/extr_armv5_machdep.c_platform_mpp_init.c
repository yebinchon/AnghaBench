
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int ssize_t ;
typedef int reg ;
typedef int pinmap ;
typedef int pin_count ;
typedef int pin_cells ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int mpp ;


 int EINVAL ;
 int ENXIO ;
 int ERANGE ;
 int MPP_PINS_PER_REG ;
 int MPP_PIN_CELLS ;
 int MPP_PIN_MAX ;
 int MPP_SEL (int,int) ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_getprop (int,char*,int*,int) ;
 int OF_parent (int) ;
 int bus_space_write_4 (int ,int ,int,int) ;
 int bzero (int*,int) ;
 int fdt_addrsize_cells (int ,int*,int*) ;
 int fdt_data_to_res (int*,int,int,int *,int *) ;
 int fdt_find_compatible (int,char*,int ) ;
 scalar_t__ fdt_immr_va ;
 int fdtbus_bs_tag ;
 scalar_t__ ofw_bus_node_is_compatible (int,char*) ;

__attribute__((used)) static int
platform_mpp_init(void)
{
 pcell_t pinmap[MPP_PIN_MAX * MPP_PIN_CELLS];
 int mpp[MPP_PIN_MAX];
 uint32_t ctrl_val, ctrl_offset;
 pcell_t reg[4];
 u_long start, size;
 phandle_t node;
 pcell_t pin_cells, *pinmap_ptr, pin_count;
 ssize_t len;
 int par_addr_cells, par_size_cells;
 int tuple_size, tuples, rv, pins, i, j;
 int mpp_pin, mpp_function;




 if ((node = OF_finddevice("mpp")) != -1)
  if (ofw_bus_node_is_compatible(node, "mrvl,mpp"))
   goto moveon;



 if ((node = OF_finddevice("/")) == -1)
  return (ENXIO);

 if ((node = fdt_find_compatible(node, "simple-bus", 0)) == 0)
  return (ENXIO);

 if ((node = fdt_find_compatible(node, "mrvl,mpp", 0)) == 0)




  return (0);
moveon:



 if ((rv = fdt_addrsize_cells(OF_parent(node), &par_addr_cells,
     &par_size_cells)) != 0)
  return(ENXIO);

 tuple_size = sizeof(pcell_t) * (par_addr_cells + par_size_cells);
 len = OF_getprop(node, "reg", reg, sizeof(reg));
 tuples = len / tuple_size;
 if (tuple_size <= 0)
  return (EINVAL);




 rv = fdt_data_to_res(reg, par_addr_cells, par_size_cells,
     &start, &size);
 if (rv != 0)
  return (rv);
 start += fdt_immr_va;




 if (OF_getencprop(node, "pin-count", &pin_count, sizeof(pin_count)) <= 0)
  return (ENXIO);
 if (pin_count > MPP_PIN_MAX)
  return (ERANGE);

 if (OF_getencprop(node, "#pin-cells", &pin_cells, sizeof(pin_cells)) <= 0)
  pin_cells = MPP_PIN_CELLS;
 if (pin_cells > MPP_PIN_CELLS)
  return (ERANGE);
 tuple_size = sizeof(pcell_t) * pin_cells;

 bzero(pinmap, sizeof(pinmap));
 len = OF_getencprop(node, "pin-map", pinmap, sizeof(pinmap));
 if (len <= 0)
  return (ERANGE);
 if (len % tuple_size)
  return (ERANGE);
 pins = len / tuple_size;
 if (pins > pin_count)
  return (ERANGE);




 bzero(mpp, sizeof(mpp));
 pinmap_ptr = pinmap;
 for (i = 0; i < pins; i++) {
  mpp_pin = *pinmap_ptr;
  mpp_function = *(pinmap_ptr + 1);
  mpp[mpp_pin] = mpp_function;
  pinmap_ptr += pin_cells;
 }




 ctrl_offset = 0;
 for (i = 0; i < pin_count;) {
  ctrl_val = 0;

  for (j = 0; j < MPP_PINS_PER_REG; j++) {
   if (i + j == pin_count - 1)
    break;
   ctrl_val |= MPP_SEL(i + j, mpp[i + j]);
  }
  i += MPP_PINS_PER_REG;
  bus_space_write_4(fdtbus_bs_tag, start, ctrl_offset,
      ctrl_val);
   ctrl_offset += 4;
 }

 return (0);
}
