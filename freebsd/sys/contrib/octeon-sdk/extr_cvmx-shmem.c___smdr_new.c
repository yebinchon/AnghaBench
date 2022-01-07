
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cvmx_shmem_smdr {int lock; void* break64; TYPE_1__* shmd; } ;
struct TYPE_2__ {scalar_t__ alignment; scalar_t__ size; scalar_t__ paddr; int * vaddr; int * name; scalar_t__ use_count; scalar_t__ is_named_block; int owner; } ;


 int CVMX_SHMEM_NUM_DSCPTR ;
 int CVMX_SHMEM_OWNER_NONE ;
 scalar_t__ CVMX_SHMEM_VADDR64_START ;
 int __CHECK_APP_SMDR ;
 int cvmx_spinlock_init (int *) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

__attribute__((used)) static inline void __smdr_new(struct cvmx_shmem_smdr *smdr) {

    if (smdr != ((void*)0))
    {
        int i;

        cvmx_spinlock_init (&smdr->lock);
        cvmx_spinlock_lock (&smdr->lock);

        for ( i = 0; i < CVMX_SHMEM_NUM_DSCPTR; i++ )
        {
            smdr -> shmd[i].owner = CVMX_SHMEM_OWNER_NONE;
            smdr -> shmd[i].is_named_block = 0;
            smdr -> shmd[i].use_count = 0;
            smdr -> shmd[i].name = ((void*)0);
            smdr -> shmd[i].vaddr = ((void*)0);
            smdr -> shmd[i].paddr = 0;
            smdr -> shmd[i].size = 0;
            smdr -> shmd[i].alignment = 0;
        };


        smdr->break64 = (void *)CVMX_SHMEM_VADDR64_START;
        cvmx_spinlock_unlock (&smdr->lock);
    }


    __CHECK_APP_SMDR;
}
