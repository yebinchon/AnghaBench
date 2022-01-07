
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a10codec_info {TYPE_1__* cfg; } ;
struct a10codec_chinfo {int dir; int dmachan; int dmac; struct a10codec_info* parent; } ;
struct TYPE_2__ {int (* mute ) (struct a10codec_info*,int,int ) ;} ;


 int AC_ADC_FIFOC (struct a10codec_info*) ;
 int AC_DAC_FIFOC (struct a10codec_info*) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int ) ;
 int PCMDIR_PLAY ;
 int SUNXI_DMA_HALT (int ,int ) ;
 int stub1 (struct a10codec_info*,int,int ) ;

__attribute__((used)) static void
a10codec_stop(struct a10codec_chinfo *ch)
{
 struct a10codec_info *sc = ch->parent;


 SUNXI_DMA_HALT(ch->dmac, ch->dmachan);

 sc->cfg->mute(sc, 1, ch->dir);

 if (ch->dir == PCMDIR_PLAY) {

  CODEC_WRITE(sc, AC_DAC_FIFOC(sc), 0);
 } else {

  CODEC_WRITE(sc, AC_ADC_FIFOC(sc), 0);
 }
}
