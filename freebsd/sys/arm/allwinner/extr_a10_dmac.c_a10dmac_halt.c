
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10dmac_channel {scalar_t__ ch_type; } ;
typedef int device_t ;


 int AWIN_DDMA_CTL_DMA_LOADING ;
 int AWIN_NDMA_CTL_DMA_LOADING ;
 scalar_t__ CH_NDMA ;
 int a10dmac_read_ctl (struct a10dmac_channel*) ;
 int a10dmac_write_ctl (struct a10dmac_channel*,int ) ;

__attribute__((used)) static void
a10dmac_halt(device_t dev, void *priv)
{
 struct a10dmac_channel *ch = priv;
 uint32_t cfg;

 cfg = a10dmac_read_ctl(ch);
 if (ch->ch_type == CH_NDMA) {
  cfg &= ~AWIN_NDMA_CTL_DMA_LOADING;
 } else {
  cfg &= ~AWIN_DDMA_CTL_DMA_LOADING;
 }
 a10dmac_write_ctl(ch, cfg);
}
