
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct a10codec_chinfo {scalar_t__ dir; TYPE_1__* parent; scalar_t__ run; int blocksize; int dmachan; int dmac; scalar_t__ pos; scalar_t__ physaddr; scalar_t__ fifo; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PCMDIR_PLAY ;
 int SUNXI_DMA_TRANSFER (int ,int ,scalar_t__,scalar_t__,int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
a10codec_transfer(struct a10codec_chinfo *ch)
{
 bus_addr_t src, dst;
 int error;

 if (ch->dir == PCMDIR_PLAY) {
  src = ch->physaddr + ch->pos;
  dst = ch->fifo;
 } else {
  src = ch->fifo;
  dst = ch->physaddr + ch->pos;
 }

 error = SUNXI_DMA_TRANSFER(ch->dmac, ch->dmachan, src, dst,
     ch->blocksize);
 if (error) {
  ch->run = 0;
  device_printf(ch->parent->dev, "DMA transfer failed: %d\n",
      error);
 }
}
