
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xstate_hdr {int xstate_bv; } ;
struct thread {int dummy; } ;
struct savefpu {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int bcopy (char*,char*,size_t) ;
 int cpu_max_ext_state_size ;
 scalar_t__ get_pcb_user_save_td (struct thread*) ;
 int use_xsave ;
 int xsave_mask ;

int
fpusetxstate(struct thread *td, char *xfpustate, size_t xfpustate_size)
{
 struct xstate_hdr *hdr, *ehdr;
 size_t len, max_len;
 uint64_t bv;


 if (xfpustate == ((void*)0))
  return (0);
 if (!use_xsave)
  return (EOPNOTSUPP);

 len = xfpustate_size;
 if (len < sizeof(struct xstate_hdr))
  return (EINVAL);
 max_len = cpu_max_ext_state_size - sizeof(struct savefpu);
 if (len > max_len)
  return (EINVAL);

 ehdr = (struct xstate_hdr *)xfpustate;
 bv = ehdr->xstate_bv;




 if (bv & ~xsave_mask)
  return (EINVAL);

 hdr = (struct xstate_hdr *)(get_pcb_user_save_td(td) + 1);

 hdr->xstate_bv = bv;
 bcopy(xfpustate + sizeof(struct xstate_hdr),
     (char *)(hdr + 1), len - sizeof(struct xstate_hdr));

 return (0);
}
