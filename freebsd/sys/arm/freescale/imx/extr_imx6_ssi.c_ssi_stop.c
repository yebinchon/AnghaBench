
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int dma_size; int buf_base; int sdma_channel; } ;


 int READ4 (struct sc_info*,int ) ;
 int SIER_TDMAE ;
 int SSI_SIER ;
 int WRITE4 (struct sc_info*,int ,int) ;
 int bzero (int ,int ) ;
 int sdma_stop (int ) ;

__attribute__((used)) static int
ssi_stop(struct sc_pcminfo *scp)
{
 struct sc_info *sc;
 int reg;

 sc = scp->sc;

 reg = READ4(sc, SSI_SIER);
 reg &= ~(SIER_TDMAE);
 WRITE4(sc, SSI_SIER, reg);

 sdma_stop(sc->sdma_channel);

 bzero(sc->buf_base, sc->dma_size);

 return (0);
}
