
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_command {TYPE_5__* data; } ;
struct aw_mmc_softc {int aw_dma_map_err; int aw_dma_desc_phys; int aw_dma_map; int aw_dma_tag; int aw_dma_buf_map; int aw_dma_buf_tag; TYPE_4__* aw_mmc_conf; TYPE_3__* aw_req; TYPE_2__* ccb; } ;
typedef int bus_dmasync_op_t ;
struct TYPE_10__ {int len; int flags; int data; } ;
struct TYPE_9__ {int dma_xferlen; } ;
struct TYPE_8__ {struct mmc_command* cmd; } ;
struct TYPE_6__ {struct mmc_command cmd; } ;
struct TYPE_7__ {TYPE_1__ mmcio; } ;


 int AW_MMC_DLBA ;
 int AW_MMC_DMAC ;
 int AW_MMC_DMAC_IDMAC_FIX_BURST ;
 int AW_MMC_DMAC_IDMAC_IDMA_ON ;
 int AW_MMC_DMAC_IDMAC_SOFT_RST ;
 int AW_MMC_DMA_FTRGLEVEL ;
 int AW_MMC_DMA_SEGS ;
 int AW_MMC_FWLR ;
 int AW_MMC_GCTL ;
 int AW_MMC_GCTL_DMA_ENB ;
 int AW_MMC_GCTL_DMA_RST ;
 int AW_MMC_GCTL_FIFO_AC_MOD ;
 int AW_MMC_IDIE ;
 int AW_MMC_IDST_RX_INT ;
 int AW_MMC_IDST_TX_INT ;
 int AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EFBIG ;
 int MMC_DATA_WRITE ;
 int aw_dma_cb ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct aw_mmc_softc*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static int
aw_mmc_prepare_dma(struct aw_mmc_softc *sc)
{
 bus_dmasync_op_t sync_op;
 int error;
 struct mmc_command *cmd;
 uint32_t val;




 cmd = sc->aw_req->cmd;

 if (cmd->data->len > (sc->aw_mmc_conf->dma_xferlen * AW_MMC_DMA_SEGS))
  return (EFBIG);
 error = bus_dmamap_load(sc->aw_dma_buf_tag, sc->aw_dma_buf_map,
     cmd->data->data, cmd->data->len, aw_dma_cb, sc, 0);
 if (error)
  return (error);
 if (sc->aw_dma_map_err)
  return (sc->aw_dma_map_err);

 if (cmd->data->flags & MMC_DATA_WRITE)
  sync_op = BUS_DMASYNC_PREWRITE;
 else
  sync_op = BUS_DMASYNC_PREREAD;
 bus_dmamap_sync(sc->aw_dma_buf_tag, sc->aw_dma_buf_map, sync_op);
 bus_dmamap_sync(sc->aw_dma_tag, sc->aw_dma_map, BUS_DMASYNC_PREWRITE);


 val = AW_MMC_READ_4(sc, AW_MMC_GCTL);
 val &= ~AW_MMC_GCTL_FIFO_AC_MOD;
 val |= AW_MMC_GCTL_DMA_ENB;
 AW_MMC_WRITE_4(sc, AW_MMC_GCTL, val);


 val |= AW_MMC_GCTL_DMA_RST;
 AW_MMC_WRITE_4(sc, AW_MMC_GCTL, val);

 AW_MMC_WRITE_4(sc, AW_MMC_DMAC, AW_MMC_DMAC_IDMAC_SOFT_RST);
 AW_MMC_WRITE_4(sc, AW_MMC_DMAC,
     AW_MMC_DMAC_IDMAC_IDMA_ON | AW_MMC_DMAC_IDMAC_FIX_BURST);


 val = AW_MMC_READ_4(sc, AW_MMC_IDIE);
 if (cmd->data->flags & MMC_DATA_WRITE)
  val |= AW_MMC_IDST_TX_INT;
 else
  val |= AW_MMC_IDST_RX_INT;
 AW_MMC_WRITE_4(sc, AW_MMC_IDIE, val);


 AW_MMC_WRITE_4(sc, AW_MMC_DLBA, sc->aw_dma_desc_phys);


 AW_MMC_WRITE_4(sc, AW_MMC_FWLR, AW_MMC_DMA_FTRGLEVEL);

 return (0);
}
