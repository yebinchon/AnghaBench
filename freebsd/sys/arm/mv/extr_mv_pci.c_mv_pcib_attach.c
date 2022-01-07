
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_pcib_softc {int ap_segment; int sc_skip_enable_procedure; int sc_enable_find_root_slot; scalar_t__ sc_mode; int sc_busnr; int sc_devnr; int sc_io_rman; int sc_mem_rman; int sc_msi_mtx; int sc_bsh; int sc_bst; int sc_dev; int sc_pci_iinfo; int * sc_res; scalar_t__ sc_rid; int sc_io_win_attr; int sc_mem_win_attr; int sc_win_target; void* sc_type; } ;
typedef int port_id ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ MV_MODE_ENDPOINT ;
 scalar_t__ MV_MODE_ROOT ;
 void* MV_TYPE_PCI ;
 void* MV_TYPE_PCIE ;
 int MV_WIN_PCIE_IO_ATTR (int) ;
 int MV_WIN_PCIE_IO_ATTR_ARMADA38X (int) ;
 int MV_WIN_PCIE_MEM_ATTR (int) ;
 int MV_WIN_PCIE_MEM_ATTR_ARMADA38X (int) ;
 int MV_WIN_PCIE_TARGET (int) ;
 int MV_WIN_PCIE_TARGET_ARMADA38X (int) ;
 int MV_WIN_PCI_IO_ATTR ;
 int MV_WIN_PCI_MEM_ATTR ;
 int MV_WIN_PCI_TARGET ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 int OF_hasprop (int ,char*) ;
 int OF_parent (int ) ;
 int PCIE_CONTROL_ROOT_CMPLX ;
 int PCIE_REG_CONTROL ;
 int PCIE_REG_STATUS ;
 int PCIE_STATUS_DEV_OFFS ;
 int PCI_BUSMAX ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int device_add_child (int ,char*,int) ;
 struct mv_pcib_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ mv_pcib_decode_win (int ,struct mv_pcib_softc*) ;
 int mv_pcib_enable (struct mv_pcib_softc*,int) ;
 int mv_pcib_hw_cfginit () ;
 int mv_pcib_init (struct mv_pcib_softc*,int,int) ;
 int mv_pcib_maxslots (int ) ;
 int mv_pcib_mem_init (struct mv_pcib_softc*) ;
 int mv_pcib_read_config (int ,int,int,int,int,int) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;
 int ofw_bus_setup_iinfo (int ,int *,int) ;
 int rman_fini (int *) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
mv_pcib_attach(device_t self)
{
 struct mv_pcib_softc *sc;
 phandle_t node, parnode;
 uint32_t val, reg0;
 int err, bus, devfn, port_id;

 sc = device_get_softc(self);
 sc->sc_dev = self;

 node = ofw_bus_get_node(self);
 parnode = OF_parent(node);

 if (OF_getencprop(node, "marvell,pcie-port", &(port_id),
     sizeof(port_id)) <= 0) {

  if (!OF_hasprop(node, "marvell,pcie-port"))
   port_id = 0;
  else
   return(ENXIO);
 }

 sc->ap_segment = port_id;

 if (ofw_bus_node_is_compatible(node, "mrvl,pcie")) {
  sc->sc_type = MV_TYPE_PCIE;
  sc->sc_win_target = MV_WIN_PCIE_TARGET(port_id);
  sc->sc_mem_win_attr = MV_WIN_PCIE_MEM_ATTR(port_id);
  sc->sc_io_win_attr = MV_WIN_PCIE_IO_ATTR(port_id);



 } else if (ofw_bus_node_is_compatible(parnode, "marvell,armada-370-pcie")) {
  sc->sc_type = MV_TYPE_PCIE;
  sc->sc_win_target = MV_WIN_PCIE_TARGET_ARMADA38X(port_id);
  sc->sc_mem_win_attr = MV_WIN_PCIE_MEM_ATTR_ARMADA38X(port_id);
  sc->sc_io_win_attr = MV_WIN_PCIE_IO_ATTR_ARMADA38X(port_id);
  sc->sc_enable_find_root_slot = 1;
 } else if (ofw_bus_node_is_compatible(node, "mrvl,pci")) {
  sc->sc_type = MV_TYPE_PCI;
  sc->sc_win_target = MV_WIN_PCI_TARGET;
  sc->sc_mem_win_attr = MV_WIN_PCI_MEM_ATTR;
  sc->sc_io_win_attr = MV_WIN_PCI_IO_ATTR;
 } else
  return (ENXIO);




 sc->sc_rid = 0;
 sc->sc_res = bus_alloc_resource_any(self, SYS_RES_MEMORY, &sc->sc_rid,
     RF_ACTIVE);
 if (sc->sc_res == ((void*)0)) {
  device_printf(self, "could not map memory\n");
  return (ENXIO);
 }
 sc->sc_bst = rman_get_bustag(sc->sc_res);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res);

 val = bus_space_read_4(sc->sc_bst, sc->sc_bsh, PCIE_REG_CONTROL);
 sc->sc_mode = (val & PCIE_CONTROL_ROOT_CMPLX ? MV_MODE_ROOT :
     MV_MODE_ENDPOINT);




 if (sc->sc_mode == MV_MODE_ROOT)
  ofw_bus_setup_iinfo(node, &sc->sc_pci_iinfo, sizeof(pcell_t));




 if (mv_pcib_decode_win(node, sc) != 0)
  return (ENXIO);

 mv_pcib_hw_cfginit();




 mv_pcib_enable(sc, port_id);




 err = mv_pcib_mem_init(sc);
 if (err)
  return (err);





 for (bus = 0; bus < PCI_BUSMAX; bus++) {
  for (devfn = 0; devfn < mv_pcib_maxslots(self); devfn++) {
   reg0 = mv_pcib_read_config(self, bus, devfn, devfn & 0x7, 0x0, 4);
   if (reg0 == (~0U))
    continue;
   else {
    sc->sc_busnr = bus;
    break;
   }
  }
 }

 if (sc->sc_mode == MV_MODE_ROOT) {
  err = mv_pcib_init(sc, sc->sc_busnr,
      mv_pcib_maxslots(sc->sc_dev));
  if (err)
   goto error;

  device_add_child(self, "pci", -1);
 } else {
  sc->sc_devnr = 1;
  bus_space_write_4(sc->sc_bst, sc->sc_bsh,
      PCIE_REG_STATUS, 1 << PCIE_STATUS_DEV_OFFS);
  device_add_child(self, "pci_ep", -1);
 }

 mtx_init(&sc->sc_msi_mtx, "msi_mtx", ((void*)0), MTX_DEF);
 return (bus_generic_attach(self));

error:

 rman_fini(&sc->sc_mem_rman);
 rman_fini(&sc->sc_io_rman);

 return (err);
}
