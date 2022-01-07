
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blake2b_compress ;
 int blake2b_compress_avx2 ;
 int blake2b_compress_ref ;
 int blake2b_compress_sse41 ;
 int blake2b_compress_ssse3 ;
 scalar_t__ sodium_runtime_has_avx2 () ;
 scalar_t__ sodium_runtime_has_sse41 () ;
 scalar_t__ sodium_runtime_has_ssse3 () ;

int
blake2b_pick_best_implementation(void)
{
    blake2b_compress = blake2b_compress_ref;

    return 0;

}
