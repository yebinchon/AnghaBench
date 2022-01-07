
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int hashtable_ctrl; } ;


 int TGEC_HASH_ADR_MSK ;
 int TGEC_HASH_MCAST_EN ;
 int TGEC_HASH_MCAST_SHIFT ;
 int iowrite32be (int,int *) ;

void fman_tgec_set_hash_table_entry(struct tgec_regs *regs, uint32_t crc)
{
    uint32_t hash = (crc >> TGEC_HASH_MCAST_SHIFT) & TGEC_HASH_ADR_MSK;
 iowrite32be(hash | TGEC_HASH_MCAST_EN, &regs->hashtable_ctrl);
}
