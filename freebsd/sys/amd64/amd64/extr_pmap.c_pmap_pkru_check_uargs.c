
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {scalar_t__ pm_type; } ;


 int AMD64_PKRU_EXCL ;
 int AMD64_PKRU_PERSIST ;
 int CPUID_STDEXT2_PKU ;
 int EFAULT ;
 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ PMAP_MAX_PKRU_IDX ;
 scalar_t__ PT_X86 ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int cpu_stdext_feature2 ;

__attribute__((used)) static int
pmap_pkru_check_uargs(pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    u_int keyidx, int flags)
{

 if (pmap->pm_type != PT_X86 || keyidx > PMAP_MAX_PKRU_IDX ||
     (flags & ~(AMD64_PKRU_PERSIST | AMD64_PKRU_EXCL)) != 0)
  return (EINVAL);
 if (eva <= sva || eva > VM_MAXUSER_ADDRESS)
  return (EFAULT);
 if ((cpu_stdext_feature2 & CPUID_STDEXT2_PKU) == 0)
  return (ENOTSUP);
 return (0);
}
