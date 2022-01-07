
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a10hdmiaudio_chinfo {TYPE_1__* parent; scalar_t__ run; int blocksize; scalar_t__ pos; scalar_t__ physaddr; int dmachan; int dmac; } ;
struct TYPE_2__ {int dev; } ;


 int SUNXI_DMA_TRANSFER (int ,int ,scalar_t__,int ,int ) ;
 int TX_FIFO ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
a10hdmiaudio_transfer(struct a10hdmiaudio_chinfo *ch)
{
 int error;

 error = SUNXI_DMA_TRANSFER(ch->dmac, ch->dmachan,
     ch->physaddr + ch->pos, TX_FIFO, ch->blocksize);
 if (error) {
  ch->run = 0;
  device_printf(ch->parent->dev, "DMA transfer failed: %d\n",
      error);
 }
}
