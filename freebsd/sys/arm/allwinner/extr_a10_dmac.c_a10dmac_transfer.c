
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10dmac_channel {scalar_t__ ch_type; } ;
typedef int device_t ;
typedef size_t bus_addr_t ;


 int AWIN_DDMA_BC_REG ;
 int AWIN_DDMA_CTL_DMA_LOADING ;
 int AWIN_DDMA_DEST_START_ADDR_REG ;
 int AWIN_DDMA_SRC_START_ADDR_REG ;
 int AWIN_NDMA_BC_REG ;
 int AWIN_NDMA_CTL_DMA_LOADING ;
 int AWIN_NDMA_DEST_ADDR_REG ;
 int AWIN_NDMA_SRC_ADDR_REG ;
 scalar_t__ CH_NDMA ;
 int DMACH_WRITE (struct a10dmac_channel*,int ,size_t) ;
 int EBUSY ;
 int a10dmac_read_ctl (struct a10dmac_channel*) ;
 int a10dmac_write_ctl (struct a10dmac_channel*,int) ;

__attribute__((used)) static int
a10dmac_transfer(device_t dev, void *priv, bus_addr_t src, bus_addr_t dst,
    size_t nbytes)
{
 struct a10dmac_channel *ch = priv;
 uint32_t cfg;

 cfg = a10dmac_read_ctl(ch);
 if (ch->ch_type == CH_NDMA) {
  if (cfg & AWIN_NDMA_CTL_DMA_LOADING)
   return (EBUSY);

  DMACH_WRITE(ch, AWIN_NDMA_SRC_ADDR_REG, src);
  DMACH_WRITE(ch, AWIN_NDMA_DEST_ADDR_REG, dst);
  DMACH_WRITE(ch, AWIN_NDMA_BC_REG, nbytes);

  cfg |= AWIN_NDMA_CTL_DMA_LOADING;
  a10dmac_write_ctl(ch, cfg);
 } else {
  if (cfg & AWIN_DDMA_CTL_DMA_LOADING)
   return (EBUSY);

  DMACH_WRITE(ch, AWIN_DDMA_SRC_START_ADDR_REG, src);
  DMACH_WRITE(ch, AWIN_DDMA_DEST_START_ADDR_REG, dst);
  DMACH_WRITE(ch, AWIN_DDMA_BC_REG, nbytes);

  cfg |= AWIN_DDMA_CTL_DMA_LOADING;
  a10dmac_write_ctl(ch, cfg);
 }

 return (0);
}
