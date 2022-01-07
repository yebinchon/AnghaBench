
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_coremask {scalar_t__* coremask_bitmap; } ;


 int CVMX_COREMASK_BMPSZ ;

__attribute__((used)) static inline int cvmx_coremask_clear_all(struct cvmx_coremask *pcm)
{
    int i;

    for (i = 0; i < CVMX_COREMASK_BMPSZ; i++)
        pcm->coremask_bitmap[i] = 0;

    return 0;
}
