
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_CPUID_SVM_DECODE_ASSIST ;
 int svm_feature ;

__attribute__((used)) static __inline int
decode_assist(void)
{

 return (svm_feature & AMD_CPUID_SVM_DECODE_ASSIST);
}
