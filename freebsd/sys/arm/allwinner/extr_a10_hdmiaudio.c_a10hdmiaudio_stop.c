
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10hdmiaudio_chinfo {int dmachan; int dmac; } ;


 int SUNXI_DMA_HALT (int ,int ) ;

__attribute__((used)) static void
a10hdmiaudio_stop(struct a10hdmiaudio_chinfo *ch)
{

 SUNXI_DMA_HALT(ch->dmac, ch->dmachan);
}
