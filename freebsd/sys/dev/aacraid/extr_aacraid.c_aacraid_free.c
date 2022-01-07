
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int * aac_regs_res1; int aac_regs_rid1; int aac_dev; int * aac_regs_res0; int aac_regs_rid0; scalar_t__ aac_parent_dmat; scalar_t__ aac_buffer_dmat; scalar_t__ msi_tupelo; scalar_t__ msi_enabled; int ** aac_irq; int * aac_irq_rid; scalar_t__* aac_intr; scalar_t__ aac_common_dmat; int aac_common_dmamap; scalar_t__ aac_common; int aac_commands; scalar_t__ aac_fib_dmat; int * aac_dev_t; } ;


 int AAC_MAX_MSIX ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int M_AACRAIDBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int aac_free_commands (struct aac_softc*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int destroy_dev (int *) ;
 int free (int ,int ) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int pci_release_msi (int ) ;

void
aacraid_free(struct aac_softc *sc)
{
 int i;

 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 if (sc->aac_dev_t != ((void*)0))
  destroy_dev(sc->aac_dev_t);


 aac_free_commands(sc);
 if (sc->aac_fib_dmat)
  bus_dma_tag_destroy(sc->aac_fib_dmat);

 free(sc->aac_commands, M_AACRAIDBUF);


 if (sc->aac_common) {
  bus_dmamap_unload(sc->aac_common_dmat, sc->aac_common_dmamap);
  bus_dmamem_free(sc->aac_common_dmat, sc->aac_common,
    sc->aac_common_dmamap);
 }
 if (sc->aac_common_dmat)
  bus_dma_tag_destroy(sc->aac_common_dmat);


 for (i = 0; i < AAC_MAX_MSIX; ++i) {
  if (sc->aac_intr[i])
   bus_teardown_intr(sc->aac_dev,
    sc->aac_irq[i], sc->aac_intr[i]);
  if (sc->aac_irq[i])
   bus_release_resource(sc->aac_dev, SYS_RES_IRQ,
    sc->aac_irq_rid[i], sc->aac_irq[i]);
  else
   break;
 }
 if (sc->msi_enabled || sc->msi_tupelo)
  pci_release_msi(sc->aac_dev);


 if (sc->aac_buffer_dmat)
  bus_dma_tag_destroy(sc->aac_buffer_dmat);


 if (sc->aac_parent_dmat)
  bus_dma_tag_destroy(sc->aac_parent_dmat);


 if (sc->aac_regs_res0 != ((void*)0))
  bus_release_resource(sc->aac_dev, SYS_RES_MEMORY,
         sc->aac_regs_rid0, sc->aac_regs_res0);
 if (sc->aac_regs_res1 != ((void*)0))
  bus_release_resource(sc->aac_dev, SYS_RES_MEMORY,
         sc->aac_regs_rid1, sc->aac_regs_res1);
}
