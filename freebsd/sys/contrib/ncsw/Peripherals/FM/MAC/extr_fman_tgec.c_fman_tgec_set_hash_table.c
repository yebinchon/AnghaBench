
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int hashtable_ctrl; } ;


 int iowrite32be (int ,int *) ;

void fman_tgec_set_hash_table(struct tgec_regs *regs, uint32_t value)
{
 iowrite32be(value, &regs->hashtable_ctrl);
}
