
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {int dummy; } ;
typedef enum exc_class { ____Placeholder_exc_class } exc_class ;


 int EXC_BENIGN ;
 int EXC_CONTRIBUTORY ;
 int EXC_PAGEFAULT ;
 int IDT_DF ;
 int KASSERT (int,char*) ;
 int VCPU_CTR2 (struct vm*,int,char*,int,int) ;
 int VM_INTINFO_DEL_ERRCODE ;
 int VM_INTINFO_HWEXCEPTION ;
 int VM_INTINFO_TYPE ;
 int VM_INTINFO_VALID ;
 int VM_SUSPEND_TRIPLEFAULT ;
 int exception_class (int) ;
 int vm_suspend (struct vm*,int ) ;

__attribute__((used)) static int
nested_fault(struct vm *vm, int vcpuid, uint64_t info1, uint64_t info2,
    uint64_t *retinfo)
{
 enum exc_class exc1, exc2;
 int type1, vector1;

 KASSERT(info1 & VM_INTINFO_VALID, ("info1 %#lx is not valid", info1));
 KASSERT(info2 & VM_INTINFO_VALID, ("info2 %#lx is not valid", info2));





 type1 = info1 & VM_INTINFO_TYPE;
 vector1 = info1 & 0xff;
 if (type1 == VM_INTINFO_HWEXCEPTION && vector1 == IDT_DF) {
  VCPU_CTR2(vm, vcpuid, "triple fault: info1(%#lx), info2(%#lx)",
      info1, info2);
  vm_suspend(vm, VM_SUSPEND_TRIPLEFAULT);
  *retinfo = 0;
  return (0);
 }




 exc1 = exception_class(info1);
 exc2 = exception_class(info2);
 if ((exc1 == EXC_CONTRIBUTORY && exc2 == EXC_CONTRIBUTORY) ||
     (exc1 == EXC_PAGEFAULT && exc2 != EXC_BENIGN)) {

  *retinfo = IDT_DF;
  *retinfo |= VM_INTINFO_VALID | VM_INTINFO_HWEXCEPTION;
  *retinfo |= VM_INTINFO_DEL_ERRCODE;
 } else {

  *retinfo = info2;
 }
 return (1);
}
