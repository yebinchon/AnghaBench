
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_kg_regs {int dummy; } ;


 int TRUE ;
 int build_ar_bind_scheme (int ,int ) ;
 int fman_kg_write_ar_wait (struct fman_kg_regs*,int ) ;
 int fman_kg_write_sp (struct fman_kg_regs*,int,int ) ;

__attribute__((used)) static void clear_pe_all_scheme(struct fman_kg_regs *regs, uint8_t hwport_id)
{
 uint32_t ar;

 fman_kg_write_sp(regs, 0xffffffff, 0);

 ar = build_ar_bind_scheme(hwport_id, TRUE);
 fman_kg_write_ar_wait(regs, ar);
}
