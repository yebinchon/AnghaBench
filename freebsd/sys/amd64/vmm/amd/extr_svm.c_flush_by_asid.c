
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_CPUID_SVM_FLUSH_BY_ASID ;
 int svm_feature ;

__attribute__((used)) static __inline int
flush_by_asid(void)
{

 return (svm_feature & AMD_CPUID_SVM_FLUSH_BY_ASID);
}
