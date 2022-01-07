
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_softc {struct sdma_channel* channel; } ;
struct sdma_conf {int num_bd; int ih_user; int (* ih ) (int ,int) ;} ;
struct sdma_channel {struct sdma_buffer_descriptor* bd; struct sdma_conf* conf; } ;
struct TYPE_2__ {int status; } ;
struct sdma_buffer_descriptor {TYPE_1__ mode; } ;


 int BD_DONE ;
 int BD_RROR ;
 int READ4 (struct sdma_softc*,int ) ;
 int SDMAARM_HSTART ;
 int SDMAARM_INTR ;
 int SDMA_N_CHANNELS ;
 int WRITE4 (struct sdma_softc*,int ,int) ;
 int printf (char*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
sdma_intr(void *arg)
{
 struct sdma_buffer_descriptor *bd;
 struct sdma_channel *channel;
 struct sdma_conf *conf;
 struct sdma_softc *sc;
 int pending;
 int i;
 int j;

 sc = arg;

 pending = READ4(sc, SDMAARM_INTR);


 WRITE4(sc, SDMAARM_INTR, pending);

 for (i = 0; i < SDMA_N_CHANNELS; i++) {
  if ((pending & (1 << i)) == 0)
   continue;
  channel = &sc->channel[i];
  conf = channel->conf;
  if (!conf)
   continue;
  for (j = 0; j < conf->num_bd; j++) {
   bd = &channel->bd[j];
   bd->mode.status |= BD_DONE;
   if (bd->mode.status & BD_RROR)
    printf("sDMA error\n");
  }

  conf->ih(conf->ih_user, 1);

  WRITE4(sc, SDMAARM_HSTART, (1 << i));
 }
}
