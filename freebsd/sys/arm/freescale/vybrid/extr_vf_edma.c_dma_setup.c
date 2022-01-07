
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcd_conf {int channel; int smod; int dmod; int ssize; int dsize; int soff; int doff; int nmajor; int majorelink; int majorelinkch; int nbytes; int dlast_sga; int slast; int daddr; int saddr; int ih_user; int ih; } ;
struct edma_softc {int dummy; } ;
struct edma_channel {int ih_user; int ih; } ;


 int DMA_EEI ;
 int DMA_ERQ ;
 int DMA_TCDn_ATTR (int) ;
 int DMA_TCDn_BITER_ELINKNO (int) ;
 int DMA_TCDn_CITER_ELINKNO (int) ;
 int DMA_TCDn_CSR (int) ;
 int DMA_TCDn_DADDR (int) ;
 int DMA_TCDn_DLASTSGA (int) ;
 int DMA_TCDn_DOFF (int) ;
 int DMA_TCDn_NBYTES_MLOFFYES (int) ;
 int DMA_TCDn_SADDR (int) ;
 int DMA_TCDn_SLAST (int) ;
 int DMA_TCDn_SOFF (int) ;
 int READ4 (struct edma_softc*,int ) ;
 int TCD_ATTR_DMOD_SHIFT ;
 int TCD_ATTR_DSIZE_SHIFT ;
 int TCD_ATTR_SMOD_SHIFT ;
 int TCD_ATTR_SSIZE_SHIFT ;
 int TCD_CSR_INTMAJOR ;
 int TCD_CSR_MAJORELINK ;
 int TCD_CSR_MAJORELINKCH_SHIFT ;
 int TCD_WRITE2 (struct edma_softc*,int ,int) ;
 int TCD_WRITE4 (struct edma_softc*,int ,int ) ;
 int WRITE4 (struct edma_softc*,int ,int) ;
 struct edma_channel* edma_map ;

__attribute__((used)) static int
dma_setup(struct edma_softc *sc, struct tcd_conf *tcd)
{
 struct edma_channel *ch;
 int chnum;
 int reg;

 chnum = tcd->channel;

 ch = &edma_map[chnum];
 ch->ih = tcd->ih;
 ch->ih_user = tcd->ih_user;

 TCD_WRITE4(sc, DMA_TCDn_SADDR(chnum), tcd->saddr);
 TCD_WRITE4(sc, DMA_TCDn_DADDR(chnum), tcd->daddr);

 reg = (tcd->smod << TCD_ATTR_SMOD_SHIFT);
 reg |= (tcd->dmod << TCD_ATTR_DMOD_SHIFT);
 reg |= (tcd->ssize << TCD_ATTR_SSIZE_SHIFT);
 reg |= (tcd->dsize << TCD_ATTR_DSIZE_SHIFT);
 TCD_WRITE2(sc, DMA_TCDn_ATTR(chnum), reg);

 TCD_WRITE2(sc, DMA_TCDn_SOFF(chnum), tcd->soff);
 TCD_WRITE2(sc, DMA_TCDn_DOFF(chnum), tcd->doff);
 TCD_WRITE4(sc, DMA_TCDn_SLAST(chnum), tcd->slast);
 TCD_WRITE4(sc, DMA_TCDn_DLASTSGA(chnum), tcd->dlast_sga);
 TCD_WRITE4(sc, DMA_TCDn_NBYTES_MLOFFYES(chnum), tcd->nbytes);

 reg = tcd->nmajor;
 TCD_WRITE2(sc, DMA_TCDn_CITER_ELINKNO(chnum), reg);
 TCD_WRITE2(sc, DMA_TCDn_BITER_ELINKNO(chnum), reg);

 reg = (TCD_CSR_INTMAJOR);
 if(tcd->majorelink == 1) {
  reg |= TCD_CSR_MAJORELINK;
  reg |= (tcd->majorelinkch << TCD_CSR_MAJORELINKCH_SHIFT);
 }
 TCD_WRITE2(sc, DMA_TCDn_CSR(chnum), reg);


 reg = READ4(sc, DMA_ERQ);
 reg |= (0x1 << chnum);
 WRITE4(sc, DMA_ERQ, reg);


 reg = READ4(sc, DMA_EEI);
 reg |= (0x1 << chnum);
 WRITE4(sc, DMA_EEI, reg);

 return (0);
}
