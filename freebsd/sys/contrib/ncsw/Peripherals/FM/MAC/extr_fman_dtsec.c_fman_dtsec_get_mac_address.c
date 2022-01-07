
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct dtsec_regs {int macstnaddr2; int macstnaddr1; } ;


 int ioread32be (int *) ;

void fman_dtsec_get_mac_address(struct dtsec_regs *regs, uint8_t *macaddr)
{
 uint32_t tmp1, tmp2;

 tmp1 = ioread32be(&regs->macstnaddr1);
 tmp2 = ioread32be(&regs->macstnaddr2);

 macaddr[0] = (uint8_t)((tmp2 & 0x00ff0000) >> 16);
 macaddr[1] = (uint8_t)((tmp2 & 0xff000000) >> 24);
 macaddr[2] = (uint8_t)(tmp1 & 0x000000ff);
 macaddr[3] = (uint8_t)((tmp1 & 0x0000ff00) >> 8);
 macaddr[4] = (uint8_t)((tmp1 & 0x00ff0000) >> 16);
 macaddr[5] = (uint8_t)((tmp1 & 0xff000000) >> 24);
}
