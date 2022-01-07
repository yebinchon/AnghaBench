
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_dma_config {int dst_noincr; int dst_drqtype; int src_drqtype; int dst_wait_cyc; int src_wait_cyc; int dst_blksize; int src_blksize; int dst_burst_len; int src_burst_len; int dst_width; int src_width; } ;
struct a10hdmiaudio_chinfo {int dmachan; int dmac; } ;
typedef int conf ;


 int DDMA_BLKSIZE ;
 int DDMA_WAIT_CYC ;
 int DMA_BURST_LEN ;
 int DMA_WIDTH ;
 int DRQTYPE_HDMIAUDIO ;
 int DRQTYPE_SDRAM ;
 int SUNXI_DMA_SET_CONFIG (int ,int ,struct sunxi_dma_config*) ;
 int memset (struct sunxi_dma_config*,int ,int) ;

__attribute__((used)) static void
a10hdmiaudio_dmaconfig(struct a10hdmiaudio_chinfo *ch)
{
 struct sunxi_dma_config conf;

 memset(&conf, 0, sizeof(conf));
 conf.src_width = conf.dst_width = DMA_WIDTH;
 conf.src_burst_len = conf.dst_burst_len = DMA_BURST_LEN;
 conf.src_blksize = conf.dst_blksize = DDMA_BLKSIZE;
 conf.src_wait_cyc = conf.dst_wait_cyc = DDMA_WAIT_CYC;
 conf.src_drqtype = DRQTYPE_SDRAM;
 conf.dst_drqtype = DRQTYPE_HDMIAUDIO;
 conf.dst_noincr = 1;

 SUNXI_DMA_SET_CONFIG(ch->dmac, ch->dmachan, &conf);
}
