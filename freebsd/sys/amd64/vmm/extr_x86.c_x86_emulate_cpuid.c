
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct xsave_limits {unsigned int xcr0_allowed; unsigned int xsave_max_size; int xsave_enabled; } ;
struct vm {int dummy; } ;
typedef enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;


 unsigned int AMDFEID_CLZERO ;
 unsigned int AMDFEID_IRPERF ;
 unsigned int AMDFEID_XSAVEERPTR ;
 unsigned int AMDID2_IBS ;
 unsigned int AMDID2_MWAITX ;
 unsigned int AMDID2_NODE_ID ;
 unsigned int AMDID2_OSVW ;
 unsigned int AMDID2_PCXC ;
 unsigned int AMDID2_PNXC ;
 unsigned int AMDID2_PTSCEL2I ;
 unsigned int AMDID2_SVM ;
 int AMDID_COREID_SIZE_SHIFT ;
 unsigned int AMDID_RDTSCP ;
 unsigned int AMDPM_TSC_INVARIANT ;
 int CACHE_LINE_SIZE ;
 unsigned int CPUID2_EST ;
 unsigned int CPUID2_HV ;
 unsigned int CPUID2_MON ;
 unsigned int CPUID2_OSXSAVE ;
 unsigned int CPUID2_PDCM ;
 unsigned int CPUID2_SMX ;
 unsigned int CPUID2_TM2 ;
 unsigned int CPUID2_TSCDLT ;
 unsigned int CPUID2_VMX ;
 unsigned int CPUID2_X2APIC ;
 unsigned int CPUID2_XSAVE ;


 int CPUID_0000_0001_APICID_SHIFT ;
 unsigned int CPUID_ACPI ;
 unsigned int CPUID_DS ;
 unsigned int CPUID_EXTSTATE_XSAVEOPT ;
 unsigned int CPUID_HTT ;
 unsigned int CPUID_HTT_CORES ;
 unsigned int CPUID_LOCAL_APIC_ID ;
 unsigned int CPUID_MCA ;
 unsigned int CPUID_MCE ;
 unsigned int CPUID_MTRR ;
 unsigned int CPUID_STDEXT3_MD_CLEAR ;
 unsigned int CPUID_STDEXT_AVX2 ;
 unsigned int CPUID_STDEXT_AVX512CD ;
 unsigned int CPUID_STDEXT_AVX512ER ;
 unsigned int CPUID_STDEXT_AVX512F ;
 unsigned int CPUID_STDEXT_AVX512PF ;
 unsigned int CPUID_STDEXT_BMI1 ;
 unsigned int CPUID_STDEXT_BMI2 ;
 unsigned int CPUID_STDEXT_ERMS ;
 unsigned int CPUID_STDEXT_FSGSBASE ;
 unsigned int CPUID_STDEXT_HLE ;
 unsigned int CPUID_STDEXT_INVPCID ;
 unsigned int CPUID_STDEXT_RDSEED ;
 unsigned int CPUID_STDEXT_RTM ;
 unsigned int CPUID_STDEXT_SHA ;
 unsigned int CPUID_TM ;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TYPE_CORE ;
 int CPUID_TYPE_SMT ;
 int CPUID_VM_HIGH ;
 unsigned int CPUTPM1_ARAT ;
 int CR4_XSAVE ;
 void* MIN (int,unsigned int) ;
 int VCPU_CTR2 (struct vm*,int,char*,int,int) ;
 int VM_CAP_ENABLE_INVPCID ;
 int VM_REG_GUEST_CR4 ;
 int X2APIC_DISABLED ;
 int atomic_add_long (int *,int) ;
 int bcopy (int ,unsigned int*,int) ;
 int bhyve_id ;
 int bhyve_xcpuids ;
 int cpu_exthigh ;
 int cpu_high ;
 int cpu_id ;
 int cpuid_count (int,int,unsigned int*) ;
 int cpuid_leaf_b ;
 int do_cpuid (int,unsigned int*) ;
 int log2 (unsigned int) ;
 int panic (char*,int) ;
 int smp_tsc ;
 int tsc_is_invariant ;
 int vm_get_capability (struct vm*,int,int ,int*) ;
 int vm_get_register (struct vm*,int,int ,int*) ;
 int vm_get_topology (struct vm*,int*,int*,int*,int*) ;
 int vm_get_x2apic_state (struct vm*,int,int*) ;
 struct xsave_limits* vmm_get_xsave_limits () ;
 int vmm_is_amd () ;
 int vmm_is_intel () ;

int
x86_emulate_cpuid(struct vm *vm, int vcpu_id,
    uint32_t *eax, uint32_t *ebx, uint32_t *ecx, uint32_t *edx)
{
 const struct xsave_limits *limits;
 uint64_t cr4;
 int error, enable_invpcid, level, width, x2apic_id;
 unsigned int func, regs[4], logical_cpus;
 enum x2apic_state x2apic_state;
 uint16_t cores, maxcpus, sockets, threads;

 VCPU_CTR2(vm, vcpu_id, "cpuid %#x,%#x", *eax, *ecx);





 if (cpu_exthigh != 0 && *eax >= 0x80000000) {
  if (*eax > cpu_exthigh)
   *eax = cpu_exthigh;
 } else if (*eax >= 0x40000000) {
  if (*eax > CPUID_VM_HIGH)
   *eax = CPUID_VM_HIGH;
 } else if (*eax > cpu_high) {
  *eax = cpu_high;
 }

 func = *eax;






 switch (func) {



  case 147:
  case 145:
  case 144:
  case 137:
  case 135:
  case 134:
  case 133:
  case 132:
   cpuid_count(*eax, *ecx, regs);
   break;
  case 130:
   cpuid_count(*eax, *ecx, regs);
   if (vmm_is_amd()) {





    regs[1] &= (AMDFEID_CLZERO | AMDFEID_IRPERF |
        AMDFEID_XSAVEERPTR);

    vm_get_topology(vm, &sockets, &cores, &threads,
        &maxcpus);
    width = MIN(0xF, log2(threads * cores));
    if (width < 0x4)
     width = 0;
    logical_cpus = MIN(0xFF, threads * cores - 1);
    regs[2] = (width << AMDID_COREID_SIZE_SHIFT) | logical_cpus;
   }
   break;

  case 136:
   cpuid_count(*eax, *ecx, regs);




   regs[2] &= ~AMDID2_SVM;





   regs[2] &= ~AMDID2_PCXC;
   regs[2] &= ~AMDID2_PNXC;
   regs[2] &= ~AMDID2_PTSCEL2I;




   regs[2] &= ~AMDID2_IBS;


   regs[2] &= ~AMDID2_NODE_ID;


   regs[2] &= ~AMDID2_OSVW;


   regs[2] &= ~AMDID2_MWAITX;





   regs[3] &= ~AMDID_RDTSCP;
   break;

  case 131:
   regs[0] = 0;
   regs[1] = 0;
   regs[2] = 0;
   regs[3] = 0;
   if (tsc_is_invariant && smp_tsc)
    regs[3] |= AMDPM_TSC_INVARIANT;
   break;

  case 129:

   if (!vmm_is_amd())
    goto default_leaf;






   vm_get_topology(vm, &sockets, &cores, &threads,
       &maxcpus);
   switch (*ecx) {
   case 0:
    logical_cpus = threads;
    level = 1;
    func = 1;
    break;
   case 1:
    logical_cpus = threads;
    level = 2;
    func = 3;
    break;
   case 2:
    logical_cpus = threads * cores;
    level = 3;
    func = 3;
    break;
   default:
    logical_cpus = 0;
    level = 0;
    func = 0;
    break;
   }

   logical_cpus = MIN(0xfff, logical_cpus - 1);
   regs[0] = (logical_cpus << 14) | (1 << 8) |
       (level << 5) | func;
   regs[1] = (func > 0) ? (CACHE_LINE_SIZE - 1) : 0;
   regs[2] = 0;
   regs[3] = 0;
   break;

  case 128:

   if (!vmm_is_amd() || CPUID_TO_FAMILY(cpu_id) < 0x16)
    goto default_leaf;

   vm_get_topology(vm, &sockets, &cores, &threads,
       &maxcpus);
   regs[0] = vcpu_id;
   threads = MIN(0xFF, threads - 1);
   regs[1] = (threads << 8) |
       (vcpu_id >> log2(threads + 1));




   regs[2] = 0;
   regs[3] = 0;
   break;

  case 146:
   do_cpuid(1, regs);

   error = vm_get_x2apic_state(vm, vcpu_id, &x2apic_state);
   if (error) {
    panic("x86_emulate_cpuid: error %d "
          "fetching x2apic state", error);
   }




   regs[1] &= ~(CPUID_LOCAL_APIC_ID);
   regs[1] |= (vcpu_id << CPUID_0000_0001_APICID_SHIFT);





   regs[2] &= ~(CPUID2_VMX | CPUID2_EST | CPUID2_TM2);
   regs[2] &= ~(CPUID2_SMX);

   regs[2] |= CPUID2_HV;

   if (x2apic_state != X2APIC_DISABLED)
    regs[2] |= CPUID2_X2APIC;
   else
    regs[2] &= ~CPUID2_X2APIC;





   if (!(regs[2] & CPUID2_OSXSAVE))
    regs[2] &= ~CPUID2_XSAVE;






   regs[2] &= ~CPUID2_OSXSAVE;
   if (regs[2] & CPUID2_XSAVE) {
    error = vm_get_register(vm, vcpu_id,
        VM_REG_GUEST_CR4, &cr4);
    if (error)
     panic("x86_emulate_cpuid: error %d "
           "fetching %%cr4", error);
    if (cr4 & CR4_XSAVE)
     regs[2] |= CPUID2_OSXSAVE;
   }





   regs[2] &= ~CPUID2_MON;




   regs[2] &= ~CPUID2_PDCM;




   regs[2] &= ~CPUID2_TSCDLT;




   regs[3] &= ~(CPUID_ACPI | CPUID_TM);




   regs[3] &= ~CPUID_DS;







   regs[3] |= (CPUID_MCA | CPUID_MCE | CPUID_MTRR);

   vm_get_topology(vm, &sockets, &cores, &threads,
       &maxcpus);
   logical_cpus = threads * cores;
   regs[1] &= ~CPUID_HTT_CORES;
   regs[1] |= (logical_cpus & 0xff) << 16;
   regs[3] |= CPUID_HTT;
   break;

  case 143:
   cpuid_count(*eax, *ecx, regs);

   if (regs[0] || regs[1] || regs[2] || regs[3]) {
    vm_get_topology(vm, &sockets, &cores, &threads,
        &maxcpus);
    regs[0] &= 0x3ff;
    regs[0] |= (cores - 1) << 26;







    logical_cpus = threads;
    level = (regs[0] >> 5) & 0x7;
    if (level >= 3)
     logical_cpus *= cores;
    regs[0] |= (logical_cpus - 1) << 14;
   }
   break;

  case 141:
   regs[0] = 0;
   regs[1] = 0;
   regs[2] = 0;
   regs[3] = 0;


   if (*ecx == 0) {
    cpuid_count(*eax, *ecx, regs);


    regs[0] = 0;




    regs[1] &= (CPUID_STDEXT_FSGSBASE |
        CPUID_STDEXT_BMI1 | CPUID_STDEXT_HLE |
        CPUID_STDEXT_AVX2 | CPUID_STDEXT_BMI2 |
        CPUID_STDEXT_ERMS | CPUID_STDEXT_RTM |
        CPUID_STDEXT_AVX512F |
        CPUID_STDEXT_RDSEED |
        CPUID_STDEXT_AVX512PF |
        CPUID_STDEXT_AVX512ER |
        CPUID_STDEXT_AVX512CD | CPUID_STDEXT_SHA);
    regs[2] = 0;
    regs[3] &= CPUID_STDEXT3_MD_CLEAR;


    error = vm_get_capability(vm, vcpu_id,
        VM_CAP_ENABLE_INVPCID, &enable_invpcid);
    if (error == 0 && enable_invpcid)
     regs[1] |= CPUID_STDEXT_INVPCID;
   }
   break;

  case 142:
   regs[0] = CPUTPM1_ARAT;
   regs[1] = 0;
   regs[2] = 0;
   regs[3] = 0;
   break;

  case 140:




   regs[0] = 0;
   regs[1] = 0;
   regs[2] = 0;
   regs[3] = 0;
   break;

  case 139:



   if (vmm_is_intel()) {
    vm_get_topology(vm, &sockets, &cores, &threads,
        &maxcpus);
    if (*ecx == 0) {
     logical_cpus = threads;
     width = log2(logical_cpus);
     level = CPUID_TYPE_SMT;
     x2apic_id = vcpu_id;
    }

    if (*ecx == 1) {
     logical_cpus = threads * cores;
     width = log2(logical_cpus);
     level = CPUID_TYPE_CORE;
     x2apic_id = vcpu_id;
    }

    if (!cpuid_leaf_b || *ecx >= 2) {
     width = 0;
     logical_cpus = 0;
     level = 0;
     x2apic_id = 0;
    }

    regs[0] = width & 0x1f;
    regs[1] = logical_cpus & 0xffff;
    regs[2] = (level << 8) | (*ecx & 0xff);
    regs[3] = x2apic_id;
   } else {
    regs[0] = 0;
    regs[1] = 0;
    regs[2] = 0;
    regs[3] = 0;
   }
   break;

  case 138:
   limits = vmm_get_xsave_limits();
   if (!limits->xsave_enabled) {
    regs[0] = 0;
    regs[1] = 0;
    regs[2] = 0;
    regs[3] = 0;
    break;
   }

   cpuid_count(*eax, *ecx, regs);
   switch (*ecx) {
   case 0:
    regs[0] &= limits->xcr0_allowed;
    regs[2] = limits->xsave_max_size;
    regs[3] &= (limits->xcr0_allowed >> 32);
    break;
   case 1:

    regs[0] &= CPUID_EXTSTATE_XSAVEOPT;
    regs[1] = 0;
    regs[2] = 0;
    regs[3] = 0;
    break;
   default:





    if (!(limits->xcr0_allowed & (1ul << *ecx))) {
     regs[0] = 0;
     regs[1] = 0;
     regs[2] = 0;
     regs[3] = 0;
    }
    break;
   }
   break;

  case 0x40000000:
   regs[0] = CPUID_VM_HIGH;
   bcopy(bhyve_id, &regs[1], 4);
   bcopy(bhyve_id + 4, &regs[2], 4);
   bcopy(bhyve_id + 8, &regs[3], 4);
   break;

  default:
default_leaf:





   atomic_add_long(&bhyve_xcpuids, 1);
   cpuid_count(*eax, *ecx, regs);
   break;
 }

 *eax = regs[0];
 *ebx = regs[1];
 *ecx = regs[2];
 *edx = regs[3];

 return (1);
}
