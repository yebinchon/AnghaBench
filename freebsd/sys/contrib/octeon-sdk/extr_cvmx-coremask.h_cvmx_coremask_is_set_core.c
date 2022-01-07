
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_coremask {unsigned long long* coremask_bitmap; } ;


 int CVMX_COREMASK_HLDRSZ ;

__attribute__((used)) static inline int cvmx_coremask_is_set_core(struct cvmx_coremask *pcm,
    int core)
{
    int n, i;

    n = core % CVMX_COREMASK_HLDRSZ;
    i = core / CVMX_COREMASK_HLDRSZ;

    return (int)((pcm->coremask_bitmap[i] & (1ull << n)) != 0);
}
