
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct savefpu {int dummy; } ;
struct ia32_mcontext {char* mc_fpstate; size_t mc_xfpustate_len; int mc_flags; int mc_fpformat; int mc_ownedfp; } ;


 int _MC_IA32_HASFPXSTATE ;
 int bcopy (scalar_t__,char*,size_t) ;
 int bzero (char*,size_t) ;
 int cpu_max_ext_state_size ;
 int fpuformat () ;
 int fpugetregs (struct thread*) ;
 scalar_t__ get_pcb_user_save_td (struct thread*) ;
 int use_xsave ;

__attribute__((used)) static void
ia32_get_fpcontext(struct thread *td, struct ia32_mcontext *mcp,
    char *xfpusave, size_t xfpusave_len)
{
 size_t max_len, len;







 mcp->mc_ownedfp = fpugetregs(td);
 bcopy(get_pcb_user_save_td(td), &mcp->mc_fpstate[0],
     sizeof(mcp->mc_fpstate));
 mcp->mc_fpformat = fpuformat();
 if (!use_xsave || xfpusave_len == 0)
  return;
 max_len = cpu_max_ext_state_size - sizeof(struct savefpu);
 len = xfpusave_len;
 if (len > max_len) {
  len = max_len;
  bzero(xfpusave + max_len, len - max_len);
 }
 mcp->mc_flags |= _MC_IA32_HASFPXSTATE;
 mcp->mc_xfpustate_len = len;
 bcopy(get_pcb_user_save_td(td) + 1, xfpusave, len);
}
