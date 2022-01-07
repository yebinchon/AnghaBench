
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EPT_VIOLATION_DATA_READ ;
 int EPT_VIOLATION_DATA_WRITE ;
 int EPT_VIOLATION_GLA_VALID ;
 int EPT_VIOLATION_INST_FETCH ;
 int EPT_VIOLATION_XLAT_VALID ;

__attribute__((used)) static bool
ept_emulation_fault(uint64_t ept_qual)
{
 int read, write;


 if (ept_qual & EPT_VIOLATION_INST_FETCH)
  return (0);


 read = ept_qual & EPT_VIOLATION_DATA_READ ? 1 : 0;
 write = ept_qual & EPT_VIOLATION_DATA_WRITE ? 1 : 0;
 if ((read | write) == 0)
  return (0);






 if ((ept_qual & EPT_VIOLATION_GLA_VALID) == 0 ||
     (ept_qual & EPT_VIOLATION_XLAT_VALID) == 0) {
  return (0);
 }

 return (1);
}
