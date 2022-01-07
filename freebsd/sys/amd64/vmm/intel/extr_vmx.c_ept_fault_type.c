
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EPT_VIOLATION_DATA_WRITE ;
 int EPT_VIOLATION_INST_FETCH ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;

__attribute__((used)) static int
ept_fault_type(uint64_t ept_qual)
{
 int fault_type;

 if (ept_qual & EPT_VIOLATION_DATA_WRITE)
  fault_type = VM_PROT_WRITE;
 else if (ept_qual & EPT_VIOLATION_INST_FETCH)
  fault_type = VM_PROT_EXECUTE;
 else
  fault_type= VM_PROT_READ;

 return (fault_type);
}
