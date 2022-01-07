
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_long ;
struct proc_handle {int dummy; } ;


 int ATF_REQUIRE_EQ_MSG (int,int ,char*,...) ;
 int REG_PC ;
 int proc_bkptdel (struct proc_handle*,uintptr_t,int ) ;
 int proc_regset (struct proc_handle*,int ,uintptr_t) ;

__attribute__((used)) static void
remove_bkpt(struct proc_handle *phdl, uintptr_t addr, u_long val)
{
 int error;

 error = proc_bkptdel(phdl, addr, val);
 ATF_REQUIRE_EQ_MSG(error, 0,
     "failed to delete breakpoint at 0x%jx", (uintmax_t)addr);

 error = proc_regset(phdl, REG_PC, addr);
 ATF_REQUIRE_EQ_MSG(error, 0, "failed to reset program counter");
}
