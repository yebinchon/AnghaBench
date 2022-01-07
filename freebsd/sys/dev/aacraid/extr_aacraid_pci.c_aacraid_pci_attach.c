
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int aac_hwif; int flags; int aac_dev; int aac_parent_dmat; int * aac_regs_res1; void* aac_bhandle1; void* aac_btag1; void* aac_regs_rid1; int * aac_regs_res0; void* aac_bhandle0; void* aac_btag0; void* aac_regs_rid0; int aac_if; } ;
struct aac_ident {int hwif; int quirks; } ;
typedef int device_t ;




 int AAC_HWIF_UNKNOWN ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int ENXIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 char* HBA_FLAGS_DBG_INIT_B ;
 int PAGE_SIZE ;
 int PCIM_CMD_BUSMASTEREN ;
 void* PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct aac_ident* aac_find_ident (int ) ;
 int aacraid_attach (struct aac_softc*) ;
 int aacraid_free (struct aac_softc*) ;
 int aacraid_src_interface ;
 int aacraid_srcv_interface ;
 void* bus_alloc_resource_any (int ,int ,void**,int ) ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (struct aac_softc*,int) ;
 struct aac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int pci_enable_busmaster (int ) ;
 int pci_read_config (int ,int ,int) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;

__attribute__((used)) static int
aacraid_pci_attach(device_t dev)
{
 struct aac_softc *sc;
 struct aac_ident *id;
 int error;
 u_int32_t command;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");




 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->aac_dev = dev;


 error = ENXIO;




 pci_enable_busmaster(dev);
 command = pci_read_config(sc->aac_dev, PCIR_COMMAND, 2);
 if (!(command & PCIM_CMD_BUSMASTEREN)) {
  device_printf(sc->aac_dev, "can't enable bus-master feature\n");
  goto out;
 }





 id = aac_find_ident(dev);
 sc->aac_hwif = id->hwif;
 switch(sc->aac_hwif) {
 case 129:
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B, "set hardware up for PMC SRC");
  sc->aac_if = aacraid_src_interface;
  break;
 case 128:
  fwprintf(sc, HBA_FLAGS_DBG_INIT_B, "set hardware up for PMC SRCv");
  sc->aac_if = aacraid_srcv_interface;
  break;
 default:
  sc->aac_hwif = AAC_HWIF_UNKNOWN;
  device_printf(sc->aac_dev, "unknown hardware type\n");
  error = ENXIO;
  goto out;
 }


 error = ENOMEM;




 sc->aac_regs_rid0 = PCIR_BAR(0);
 if ((sc->aac_regs_res0 = bus_alloc_resource_any(sc->aac_dev,
     SYS_RES_MEMORY, &sc->aac_regs_rid0, RF_ACTIVE)) == ((void*)0)) {
  device_printf(sc->aac_dev,
      "couldn't allocate register window 0\n");
  goto out;
 }
 sc->aac_btag0 = rman_get_bustag(sc->aac_regs_res0);
 sc->aac_bhandle0 = rman_get_bushandle(sc->aac_regs_res0);

 sc->aac_regs_rid1 = PCIR_BAR(2);
 if ((sc->aac_regs_res1 = bus_alloc_resource_any(sc->aac_dev,
     SYS_RES_MEMORY, &sc->aac_regs_rid1, RF_ACTIVE)) == ((void*)0)) {
  device_printf(sc->aac_dev,
      "couldn't allocate register window 1\n");
  goto out;
 }
 sc->aac_btag1 = rman_get_bustag(sc->aac_regs_res1);
 sc->aac_bhandle1 = rman_get_bushandle(sc->aac_regs_res1);






 if (bus_dma_tag_create(bus_get_dma_tag(dev),
          PAGE_SIZE, 0,
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          BUS_SPACE_MAXSIZE_32BIT,
          BUS_SPACE_UNRESTRICTED,
          BUS_SPACE_MAXSIZE_32BIT,
          0,
          ((void*)0), ((void*)0),
          &sc->aac_parent_dmat)) {
  device_printf(sc->aac_dev, "can't allocate parent DMA tag\n");
  goto out;
 }


 sc->flags = id->quirks;




 error = aacraid_attach(sc);

out:
 if (error)
  aacraid_free(sc);
 return(error);
}
