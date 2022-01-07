
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cvmx_shmem_smdr {int lock; } ;
struct TYPE_3__ {size_t size; int base_addr; } ;
typedef TYPE_1__ cvmx_bootmem_named_block_desc_t ;


 char* CVMX_SHMEM_DSCPTR_NAME ;
 struct cvmx_shmem_smdr* __smdr ;
 int __smdr_new (struct cvmx_shmem_smdr*) ;
 scalar_t__ cvmx_bootmem_alloc_named (size_t,int,char*) ;
 TYPE_1__* cvmx_bootmem_find_named_block (char*) ;
 int cvmx_dprintf (char*,...) ;
 scalar_t__ cvmx_phys_to_ptr (int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

__attribute__((used)) static inline struct cvmx_shmem_smdr *__smdr_init()
{
    const cvmx_bootmem_named_block_desc_t *smdr_nblk = ((void*)0);
    size_t smdr_size = sizeof(*__smdr);
    char *smdr_name = CVMX_SHMEM_DSCPTR_NAME;

    __smdr = (struct cvmx_shmem_smdr *) cvmx_bootmem_alloc_named(smdr_size, 0x10000, smdr_name);

    if (__smdr)
       __smdr_new (__smdr);
    else
    {

        smdr_nblk = cvmx_bootmem_find_named_block(smdr_name);
        if (smdr_nblk)
        {
            __smdr = (struct cvmx_shmem_smdr *)
            (cvmx_phys_to_ptr(smdr_nblk->base_addr));

            cvmx_spinlock_lock (&__smdr->lock);
            if (smdr_nblk->size != smdr_size)
            {
                cvmx_dprintf("SMDR named block is created by another "
                    "application with different size %lu, "
                    "expecting %lu \n",
                    (long unsigned int)smdr_nblk->size, (long unsigned int)smdr_size);
                __smdr = ((void*)0);
            }
            cvmx_spinlock_unlock (&__smdr->lock);
        }
    }

   if (!__smdr)
       cvmx_dprintf("cvmx_shmem: Failed to allocate or find SMDR from bootmem \n");

   return __smdr;
}
