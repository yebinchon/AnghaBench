
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_segment ;
 int fill_segment_avx2 ;
 int fill_segment_avx512f ;
 int fill_segment_ref ;
 int fill_segment_ssse3 ;
 scalar_t__ sodium_runtime_has_avx2 () ;
 scalar_t__ sodium_runtime_has_avx512f () ;
 scalar_t__ sodium_runtime_has_ssse3 () ;

int
argon2_pick_best_implementation(void)
{
    fill_segment = fill_segment_ref;

    return 0;

}
