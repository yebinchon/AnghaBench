
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct tgec_regs {int mac_addr_1; int mac_addr_0; } ;


 int iowrite32be (scalar_t__,int *) ;

void fman_tgec_set_mac_address(struct tgec_regs *regs, uint8_t *adr)
{
 uint32_t tmp0, tmp1;

 tmp0 = (uint32_t)(adr[0] |
   adr[1] << 8 |
   adr[2] << 16 |
   adr[3] << 24);
 tmp1 = (uint32_t)(adr[4] | adr[5] << 8);
 iowrite32be(tmp0, &regs->mac_addr_0);
 iowrite32be(tmp1, &regs->mac_addr_1);
}
