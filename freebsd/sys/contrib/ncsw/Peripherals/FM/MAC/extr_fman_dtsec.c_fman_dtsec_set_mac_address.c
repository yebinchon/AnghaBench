
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct dtsec_regs {int macstnaddr2; int macstnaddr1; } ;


 int iowrite32be (scalar_t__,int *) ;

void fman_dtsec_set_mac_address(struct dtsec_regs *regs, uint8_t *adr)
{
 uint32_t tmp;

 tmp = (uint32_t)((adr[5] << 24) |
    (adr[4] << 16) |
    (adr[3] << 8) |
     adr[2]);
 iowrite32be(tmp, &regs->macstnaddr1);

 tmp = (uint32_t)((adr[1] << 24) |
    (adr[0] << 16));
 iowrite32be(tmp, &regs->macstnaddr2);
}
