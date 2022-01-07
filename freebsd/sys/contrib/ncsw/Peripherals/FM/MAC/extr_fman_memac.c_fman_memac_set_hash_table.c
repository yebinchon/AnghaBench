
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int hashtable_ctrl; } ;


 int iowrite32be (int ,int *) ;

void fman_memac_set_hash_table(struct memac_regs *regs, uint32_t val)
{
    iowrite32be(val, &regs->hashtable_ctrl);
}
