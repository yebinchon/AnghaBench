
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int MSR_AMD6TH_END ;
 int MSR_AMD6TH_START ;
 int MSR_AMD7TH_END ;
 int MSR_AMD7TH_START ;
 int MSR_PENTIUM_END ;
 int MSR_PENTIUM_START ;

__attribute__((used)) static int
svm_msr_index(uint64_t msr, int *index, int *bit)
{
 uint32_t base, off;

 *index = -1;
 *bit = (msr % 4) * 2;
 base = 0;

 if (msr >= MSR_PENTIUM_START && msr <= MSR_PENTIUM_END) {
  *index = msr / 4;
  return (0);
 }

 base += (MSR_PENTIUM_END - MSR_PENTIUM_START + 1);
 if (msr >= MSR_AMD6TH_START && msr <= MSR_AMD6TH_END) {
  off = (msr - MSR_AMD6TH_START);
  *index = (off + base) / 4;
  return (0);
 }

 base += (MSR_AMD6TH_END - MSR_AMD6TH_START + 1);
 if (msr >= MSR_AMD7TH_START && msr <= MSR_AMD7TH_END) {
  off = (msr - MSR_AMD7TH_START);
  *index = (off + base) / 4;
  return (0);
 }

 return (EINVAL);
}
