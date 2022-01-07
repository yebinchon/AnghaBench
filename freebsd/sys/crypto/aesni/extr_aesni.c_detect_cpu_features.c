
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID2_AESNI ;
 int CPUID2_SSE41 ;
 int CPUID2_SSSE3 ;
 int CPUID_STDEXT_SHA ;
 int cpu_feature2 ;
 int cpu_stdext_feature ;

__attribute__((used)) static void
detect_cpu_features(bool *has_aes, bool *has_sha)
{

 *has_aes = ((cpu_feature2 & CPUID2_AESNI) != 0 &&
     (cpu_feature2 & CPUID2_SSE41) != 0);
 *has_sha = ((cpu_stdext_feature & CPUID_STDEXT_SHA) != 0 &&
     (cpu_feature2 & CPUID2_SSSE3) != 0);
}
