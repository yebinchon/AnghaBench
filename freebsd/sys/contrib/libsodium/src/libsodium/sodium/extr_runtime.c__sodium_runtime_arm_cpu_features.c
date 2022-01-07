
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_neon; } ;
typedef TYPE_1__ CPUFeatures ;


 int ANDROID_CPU_ARM_FEATURE_NEON ;
 int android_getCpuFeatures () ;

__attribute__((used)) static int
_sodium_runtime_arm_cpu_features(CPUFeatures * const cpu_features)
{

    cpu_features->has_neon = 0;
    return -1;
}
