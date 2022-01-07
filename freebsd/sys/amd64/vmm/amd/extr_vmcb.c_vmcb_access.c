
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint64_t ;
struct vmcb {int dummy; } ;
struct svm_softc {int vm; } ;


 int EINVAL ;
 int VCPU_CTR1 (int ,int,char*,int) ;
 int VMCB_ACCESS_BYTES (int) ;
 int VMCB_ACCESS_OFFSET (int) ;
 int memcpy (char*,char*,int) ;
 struct vmcb* svm_get_vmcb (struct svm_softc*,int) ;
 int svm_set_dirty (struct svm_softc*,int,int) ;

__attribute__((used)) static int
vmcb_access(struct svm_softc *softc, int vcpu, int write, int ident,
 uint64_t *val)
{
 struct vmcb *vmcb;
 int off, bytes;
 char *ptr;

 vmcb = svm_get_vmcb(softc, vcpu);
 off = VMCB_ACCESS_OFFSET(ident);
 bytes = VMCB_ACCESS_BYTES(ident);

 if ((off + bytes) >= sizeof (struct vmcb))
  return (EINVAL);

 ptr = (char *)vmcb;

 if (!write)
  *val = 0;

 switch (bytes) {
 case 8:
 case 4:
 case 2:
  if (write)
   memcpy(ptr + off, val, bytes);
  else
   memcpy(val, ptr + off, bytes);
  break;
 default:
  VCPU_CTR1(softc->vm, vcpu,
      "Invalid size %d for VMCB access: %d", bytes);
  return (EINVAL);
 }


 if (write)
  svm_set_dirty(softc, vcpu, 0xffffffff);

 return (0);
}
