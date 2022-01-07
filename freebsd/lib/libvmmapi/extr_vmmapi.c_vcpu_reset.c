
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vmctx {int dummy; } ;


 int CR0_NE ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_CR3 ;
 int VM_REG_GUEST_CR4 ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_FS ;
 int VM_REG_GUEST_GDTR ;
 int VM_REG_GUEST_GS ;
 int VM_REG_GUEST_IDTR ;
 int VM_REG_GUEST_LDTR ;
 int VM_REG_GUEST_RAX ;
 int VM_REG_GUEST_RBP ;
 int VM_REG_GUEST_RBX ;
 int VM_REG_GUEST_RCX ;
 int VM_REG_GUEST_RDI ;
 int VM_REG_GUEST_RDX ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_GUEST_RSI ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int VM_REG_GUEST_TR ;
 int vm_set_desc (struct vmctx*,int,int ,int,int,int) ;
 int vm_set_register (struct vmctx*,int,int ,int) ;

int
vcpu_reset(struct vmctx *vmctx, int vcpu)
{
 int error;
 uint64_t rflags, rip, cr0, cr4, zero, desc_base, rdx;
 uint32_t desc_access, desc_limit;
 uint16_t sel;

 zero = 0;

 rflags = 0x2;
 error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RFLAGS, rflags);
 if (error)
  goto done;

 rip = 0xfff0;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RIP, rip)) != 0)
  goto done;

 cr0 = CR0_NE;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_CR0, cr0)) != 0)
  goto done;

 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_CR3, zero)) != 0)
  goto done;

 cr4 = 0;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_CR4, cr4)) != 0)
  goto done;




 desc_base = 0xffff0000;
 desc_limit = 0xffff;
 desc_access = 0x0093;
 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_CS,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 sel = 0xf000;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_CS, sel)) != 0)
  goto done;




 desc_base = 0;
 desc_limit = 0xffff;
 desc_access = 0x0093;
 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_SS,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_DS,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_ES,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_FS,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_GS,
       desc_base, desc_limit, desc_access);
 if (error)
  goto done;

 sel = 0;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_SS, sel)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_DS, sel)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_ES, sel)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_FS, sel)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_GS, sel)) != 0)
  goto done;


 rdx = 0xf00;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RAX, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RBX, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RCX, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RDX, rdx)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RSI, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RDI, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RBP, zero)) != 0)
  goto done;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_RSP, zero)) != 0)
  goto done;


 desc_base = 0;
 desc_limit = 0xffff;
 desc_access = 0;
 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_GDTR,
       desc_base, desc_limit, desc_access);
 if (error != 0)
  goto done;

 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_IDTR,
       desc_base, desc_limit, desc_access);
 if (error != 0)
  goto done;


 desc_base = 0;
 desc_limit = 0xffff;
 desc_access = 0x0000008b;
 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_TR, 0, 0, desc_access);
 if (error)
  goto done;

 sel = 0;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_TR, sel)) != 0)
  goto done;


 desc_base = 0;
 desc_limit = 0xffff;
 desc_access = 0x00000082;
 error = vm_set_desc(vmctx, vcpu, VM_REG_GUEST_LDTR, desc_base,
       desc_limit, desc_access);
 if (error)
  goto done;

 sel = 0;
 if ((error = vm_set_register(vmctx, vcpu, VM_REG_GUEST_LDTR, 0)) != 0)
  goto done;



 error = 0;
done:
 return (error);
}
