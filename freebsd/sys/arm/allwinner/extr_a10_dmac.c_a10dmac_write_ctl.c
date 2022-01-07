
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10dmac_channel {scalar_t__ ch_type; } ;


 int AWIN_DDMA_CTL_REG ;
 int AWIN_NDMA_CTL_REG ;
 scalar_t__ CH_NDMA ;
 int DMACH_WRITE (struct a10dmac_channel*,int ,int ) ;

__attribute__((used)) static void
a10dmac_write_ctl(struct a10dmac_channel *ch, uint32_t val)
{
 if (ch->ch_type == CH_NDMA) {
  DMACH_WRITE(ch, AWIN_NDMA_CTL_REG, val);
 } else {
  DMACH_WRITE(ch, AWIN_DDMA_CTL_REG, val);
 }
}
