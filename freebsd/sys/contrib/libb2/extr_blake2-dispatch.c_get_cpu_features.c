
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int cpu_feature_t ;


 int AVX ;
 scalar_t__ IsProcessorFeaturePresent (int) ;
 int NONE ;
 int SSE2 ;
 int SSE41 ;
 int SSSE3 ;
 int XOP ;
 int cpuid (int*,int*,int*,int*) ;
 int xgetbv (int ) ;

__attribute__((used)) static inline cpu_feature_t get_cpu_features( void )
{
  return NONE;

}
