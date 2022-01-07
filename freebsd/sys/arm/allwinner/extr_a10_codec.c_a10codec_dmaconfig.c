
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_dma_config {int src_width; int dst_width; int src_burst_len; int dst_burst_len; int dst_noincr; int src_noincr; int dst_drqtype; int src_drqtype; } ;
struct a10codec_info {TYPE_1__* cfg; } ;
struct a10codec_chinfo {scalar_t__ dir; int dmachan; int dmac; struct a10codec_info* parent; } ;
typedef int conf ;
struct TYPE_2__ {int drqtype_sdram; int drqtype_codec; } ;


 scalar_t__ PCMDIR_PLAY ;
 int SUNXI_DMA_SET_CONFIG (int ,int ,struct sunxi_dma_config*) ;
 int memset (struct sunxi_dma_config*,int ,int) ;

__attribute__((used)) static void
a10codec_dmaconfig(struct a10codec_chinfo *ch)
{
 struct a10codec_info *sc = ch->parent;
 struct sunxi_dma_config conf;

 memset(&conf, 0, sizeof(conf));
 conf.src_width = conf.dst_width = 16;
 conf.src_burst_len = conf.dst_burst_len = 4;

 if (ch->dir == PCMDIR_PLAY) {
  conf.dst_noincr = 1;
  conf.src_drqtype = sc->cfg->drqtype_sdram;
  conf.dst_drqtype = sc->cfg->drqtype_codec;
 } else {
  conf.src_noincr = 1;
  conf.src_drqtype = sc->cfg->drqtype_codec;
  conf.dst_drqtype = sc->cfg->drqtype_sdram;
 }

 SUNXI_DMA_SET_CONFIG(ch->dmac, ch->dmachan, &conf);
}
