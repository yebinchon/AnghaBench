
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct fm_pcd_storage_profile_regs {int fm_sp_acnt; } ;


 int iowrite32be (int ,int *) ;

void fman_vsp_set_statistics(struct fm_pcd_storage_profile_regs *regs,
            uint16_t index, uint32_t value)
{
    struct fm_pcd_storage_profile_regs *sp_regs;
    sp_regs = &regs[index];
    iowrite32be(value, &sp_regs->fm_sp_acnt);
}
