
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_long ;
struct proc_handle {int dummy; } ;


 int ATF_REQUIRE_EQ_MSG (int,int ,char*,int ) ;
 int proc_bkptset (struct proc_handle*,uintptr_t,int *) ;

__attribute__((used)) static void
set_bkpt(struct proc_handle *phdl, uintptr_t addr, u_long *saved)
{
 int error;

 error = proc_bkptset(phdl, addr, saved);
 ATF_REQUIRE_EQ_MSG(error, 0, "failed to set breakpoint at 0x%jx",
     (uintmax_t)addr);
}
