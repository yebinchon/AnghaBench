
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int sdma_channel; int dev; int conf; } ;


 int SIER_TDMAE ;
 int SSI_SIER ;
 int WRITE4 (struct sc_info*,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ sdma_configure (int ,int ) ;
 int sdma_start (int ) ;

__attribute__((used)) static int
ssi_start(struct sc_pcminfo *scp)
{
 struct sc_info *sc;
 int reg;

 sc = scp->sc;

 if (sdma_configure(sc->sdma_channel, sc->conf) != 0) {
  device_printf(sc->dev, "Can't configure sDMA\n");
  return (-1);
 }


 reg = (SIER_TDMAE);
 WRITE4(sc, SSI_SIER, reg);

 sdma_start(sc->sdma_channel);

 return (0);
}
