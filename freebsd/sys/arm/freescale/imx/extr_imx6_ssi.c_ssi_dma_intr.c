
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdma_conf {scalar_t__ period; } ;
struct sc_pcminfo {struct sc_info* sc; struct sc_chinfo* chan; } ;
struct sc_info {int pos; struct sdma_conf* conf; } ;
struct sc_chinfo {int channel; scalar_t__ run; int buffer; } ;


 int chn_intr (int ) ;
 int sndbuf_getsize (int ) ;

uint32_t
ssi_dma_intr(void *arg, int chn)
{
 struct sc_pcminfo *scp;
 struct sdma_conf *conf;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 int bufsize;

 scp = arg;
 ch = &scp->chan[0];
 sc = scp->sc;
 conf = sc->conf;

 bufsize = sndbuf_getsize(ch->buffer);

 sc->pos += conf->period;
 if (sc->pos >= bufsize)
  sc->pos -= bufsize;

 if (ch->run)
  chn_intr(ch->channel);

 return (0);
}
