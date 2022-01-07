
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int hashtable_ctrl; } ;


 int HASH_CTRL_MCAST_EN ;
 int iowrite32be (int,int *) ;

void fman_memac_set_hash_table_entry(struct memac_regs *regs, uint32_t crc)
{
 iowrite32be(crc | HASH_CTRL_MCAST_EN, &regs->hashtable_ctrl);
}
