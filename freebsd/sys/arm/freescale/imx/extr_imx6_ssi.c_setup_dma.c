
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_conf {int word_length; int command; int num_bd; int period; int event; scalar_t__ daddr; int saddr; struct sc_pcminfo* ih_user; int ih; } ;
struct sc_pcminfo {struct sc_info* sc; struct sc_chinfo* chan; } ;
struct sc_info {int dev; int sdma_ev_tx; int * res; int buf_base_phys; struct sdma_conf* conf; } ;
struct sc_chinfo {int buffer; } ;


 int AFMT_16BIT ;
 int AFMT_24BIT ;
 int CMD_2BYTES ;
 int CMD_3BYTES ;
 scalar_t__ SSI_STX0 ;
 int device_printf (int ,char*) ;
 scalar_t__ rman_get_start (int ) ;
 int sndbuf_getblkcnt (int ) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_getfmt (int ) ;
 int ssi_dma_intr ;

__attribute__((used)) static int
setup_dma(struct sc_pcminfo *scp)
{
 struct sdma_conf *conf;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 int fmt;

 ch = &scp->chan[0];
 sc = scp->sc;
 conf = sc->conf;

 conf->ih = ssi_dma_intr;
 conf->ih_user = scp;
 conf->saddr = sc->buf_base_phys;
 conf->daddr = rman_get_start(sc->res[0]) + SSI_STX0;
 conf->event = sc->sdma_ev_tx;
 conf->period = sndbuf_getblksz(ch->buffer);
 conf->num_bd = sndbuf_getblkcnt(ch->buffer);
 fmt = sndbuf_getfmt(ch->buffer);

 if (fmt & AFMT_16BIT) {
  conf->word_length = 16;
  conf->command = CMD_2BYTES;
 } else if (fmt & AFMT_24BIT) {
  conf->word_length = 24;
  conf->command = CMD_3BYTES;
 } else {
  device_printf(sc->dev, "Unknown format\n");
  return (-1);
 }

 return (0);
}
