
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_data {scalar_t__ len; int flags; } ;
struct aml8726_sdxc_softc {int auto_fill_flush; int dev; TYPE_1__* cmd; } ;
struct TYPE_2__ {struct mmc_data* data; } ;


 int AML_SDXC_PDMA_DMA_EN ;
 int AML_SDXC_PDMA_REG ;
 int AML_SDXC_PDMA_RX_FLUSH_MODE_SW ;
 int AML_SDXC_PDMA_TX_FILL ;
 int AML_SDXC_STATUS_REG ;
 int AML_SDXC_STATUS_TX_CNT_MASK ;
 int CSR_BARRIER (struct aml8726_sdxc_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_sdxc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int) ;
 int DELAY (int) ;
 int MMC_DATA_READ ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
aml8726_sdxc_engage_dma(struct aml8726_sdxc_softc *sc)
{
 int i;
 uint32_t pdmar;
 uint32_t sr;
 struct mmc_data *data;

 data = sc->cmd->data;

 if (data == ((void*)0) || data->len == 0)
  return;
 pdmar = CSR_READ_4(sc, AML_SDXC_PDMA_REG);

 pdmar &= ~AML_SDXC_PDMA_RX_FLUSH_MODE_SW;
 pdmar |= AML_SDXC_PDMA_DMA_EN;

 if (sc->auto_fill_flush == 1) {
  CSR_WRITE_4(sc, AML_SDXC_PDMA_REG, pdmar);
  CSR_BARRIER(sc, AML_SDXC_PDMA_REG);
  return;
 }

 if ((data->flags & MMC_DATA_READ) != 0) {
  pdmar |= AML_SDXC_PDMA_RX_FLUSH_MODE_SW;
  CSR_WRITE_4(sc, AML_SDXC_PDMA_REG, pdmar);
  CSR_BARRIER(sc, AML_SDXC_PDMA_REG);
 } else {
  pdmar |= AML_SDXC_PDMA_TX_FILL;
  CSR_WRITE_4(sc, AML_SDXC_PDMA_REG, pdmar);
  CSR_BARRIER(sc, AML_SDXC_PDMA_REG);




  for (i = 0; i < 100; i++) {
   sr = CSR_READ_4(sc, AML_SDXC_STATUS_REG);
   if ((sr & AML_SDXC_STATUS_TX_CNT_MASK) != 0)
    break;
   DELAY(1);
  }
  if (i >= 100)
   device_printf(sc->dev, "TX FIFO fill timeout\n");
 }
}
