
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct dtsec_regs {TYPE_1__* macaddr; } ;
struct TYPE_2__ {int exact_match2; int exact_match1; } ;


 int iowrite32be (int,int *) ;

void fman_dtsec_add_addr_in_paddr(struct dtsec_regs *regs,
    uint64_t addr,
    uint8_t paddr_num)
{
 uint32_t tmp;

 tmp = (uint32_t)(addr);

 tmp = (((tmp & 0x000000FF) << 24) |
  ((tmp & 0x0000FF00) << 8) |
  ((tmp & 0x00FF0000) >> 8) |
  ((tmp & 0xFF000000) >> 24));
 iowrite32be(tmp, &regs->macaddr[paddr_num].exact_match1);

 tmp = (uint32_t)(addr>>32);

 tmp = (((tmp & 0x000000FF) << 24) |
  ((tmp & 0x0000FF00) << 8) |
  ((tmp & 0x00FF0000) >> 8) |
  ((tmp & 0xFF000000) >> 24));
 iowrite32be(tmp, &regs->macaddr[paddr_num].exact_match2);
}
