
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10dmac_channel {scalar_t__ ch_type; } ;


 int AWIN_DDMA_CTL_REG ;
 int AWIN_NDMA_CTL_REG ;
 scalar_t__ CH_NDMA ;
 int DMACH_READ (struct a10dmac_channel*,int ) ;

__attribute__((used)) static uint32_t
a10dmac_read_ctl(struct a10dmac_channel *ch)
{
 if (ch->ch_type == CH_NDMA) {
  return (DMACH_READ(ch, AWIN_NDMA_CTL_REG));
 } else {
  return (DMACH_READ(ch, AWIN_DDMA_CTL_REG));
 }
}
