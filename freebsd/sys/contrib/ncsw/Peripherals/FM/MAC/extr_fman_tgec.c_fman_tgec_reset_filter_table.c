
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int hashtable_ctrl; } ;


 int TGEC_HASH_MCAST_EN ;
 int iowrite32be (int,int *) ;

void fman_tgec_reset_filter_table(struct tgec_regs *regs)
{
 uint32_t i;
 for (i = 0; i < 512; i++)
  iowrite32be(i & ~TGEC_HASH_MCAST_EN, &regs->hashtable_ctrl);
}
