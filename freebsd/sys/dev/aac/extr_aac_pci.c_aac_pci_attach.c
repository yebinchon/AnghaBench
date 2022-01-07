
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct aac_softc {int aac_hwif; int flags; int aac_parent_dmat; int aac_dev; int * aac_irq; void* aac_bhandle0; void* aac_bhandle1; void* aac_btag0; void* aac_btag1; int * aac_regs_res0; int * aac_regs_res1; int * aac_if; } ;
struct aac_ident {int hwif; int quirks; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int AAC_FLAGS_NOMSI ;




 int AAC_HWIF_UNKNOWN ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENXIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 char* HBA_FLAGS_DBG_INIT_B ;
 int PAGE_SIZE ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int aac_attach (struct aac_softc*) ;
 scalar_t__ aac_enable_msi ;
 struct aac_ident* aac_find_ident (int ) ;
 int aac_free (struct aac_softc*) ;
 int aac_rkt_interface ;
 int aac_rx_interface ;
 int aac_sa_interface ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 struct aac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_read_config (int ,int ,int) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
aac_pci_attach(device_t dev)
{
 struct aac_softc *sc;
 const struct aac_ident *id;
 int count, error, rid;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");




 sc = device_get_softc(dev);
 sc->aac_dev = dev;


 error = ENXIO;




 pci_enable_busmaster(dev);
 if (!(pci_read_config(dev, PCIR_COMMAND, 2) & PCIM_CMD_BUSMASTEREN)) {
  device_printf(dev, "can't enable bus-master feature\n");
  goto out;
 }





 id = aac_find_ident(dev);
 sc->aac_hwif = id->hwif;
 switch(sc->aac_hwif) {
 case 131:
 case 130:
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B,
      "set hardware up for i960Rx/NARK");
  sc->aac_if = &aac_rx_interface;
  break;
 case 128:
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B,
      "set hardware up for StrongARM");
  sc->aac_if = &aac_sa_interface;
  break;
 case 129:
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B,
      "set hardware up for Rocket/MIPS");
  sc->aac_if = &aac_rkt_interface;
  break;
 default:
  sc->aac_hwif = AAC_HWIF_UNKNOWN;
  device_printf(dev, "unknown hardware type\n");
  goto out;
 }


 sc->flags = id->quirks;




 rid = PCIR_BAR(0);
 if ((sc->aac_regs_res0 = bus_alloc_resource_any(dev,
     SYS_RES_MEMORY, &rid, RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "can't allocate register window 0\n");
  goto out;
 }
 sc->aac_btag0 = rman_get_bustag(sc->aac_regs_res0);
 sc->aac_bhandle0 = rman_get_bushandle(sc->aac_regs_res0);

 if (sc->aac_hwif == 130) {
  rid = PCIR_BAR(1);
  if ((sc->aac_regs_res1 = bus_alloc_resource_any(dev,
      SYS_RES_MEMORY, &rid, RF_ACTIVE)) == ((void*)0)) {
   device_printf(dev,
       "can't allocate register window 1\n");
   goto out;
  }
  sc->aac_btag1 = rman_get_bustag(sc->aac_regs_res1);
  sc->aac_bhandle1 = rman_get_bushandle(sc->aac_regs_res1);
 } else {
  sc->aac_regs_res1 = sc->aac_regs_res0;
  sc->aac_btag1 = sc->aac_btag0;
  sc->aac_bhandle1 = sc->aac_bhandle0;
 }




 rid = 0;
 if (aac_enable_msi != 0 && (sc->flags & AAC_FLAGS_NOMSI) == 0) {
  count = 1;
  if (pci_alloc_msi(dev, &count) == 0)
   rid = 1;
 }
 if ((sc->aac_irq = bus_alloc_resource_any(sc->aac_dev, SYS_RES_IRQ,
     &rid, RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE))) == ((void*)0)) {
  device_printf(dev, "can't allocate interrupt\n");
  goto out;
 }






 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          PAGE_SIZE,
          ((bus_size_t)((uint64_t)1 << 32)),
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          BUS_SPACE_MAXSIZE_32BIT,
          BUS_SPACE_UNRESTRICTED,
          BUS_SPACE_MAXSIZE_32BIT,
          0,
          ((void*)0), ((void*)0),
          &sc->aac_parent_dmat)) {
  device_printf(dev, "can't allocate parent DMA tag\n");
  goto out;
 }




 error = aac_attach(sc);

out:
 if (error)
  aac_free(sc);
 return(error);
}
