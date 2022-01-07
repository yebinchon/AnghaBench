
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcd_conf {int nbytes; int nmajor; } ;
struct sc_pcminfo {struct sc_info* sc; struct sc_chinfo* chan; } ;
struct sc_info {scalar_t__ pos; scalar_t__ dma_size; struct tcd_conf* tcd; } ;
struct sc_chinfo {int channel; scalar_t__ run; } ;


 int chn_intr (int ) ;

uint32_t
sai_dma_intr(void *arg, int chn)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 struct tcd_conf *tcd;

 scp = arg;
 ch = &scp->chan[0];

 sc = scp->sc;
 tcd = sc->tcd;

 sc->pos += (tcd->nbytes * tcd->nmajor);
 if (sc->pos >= sc->dma_size)
  sc->pos -= sc->dma_size;

 if (ch->run)
  chn_intr(ch->channel);

 return (0);
}
