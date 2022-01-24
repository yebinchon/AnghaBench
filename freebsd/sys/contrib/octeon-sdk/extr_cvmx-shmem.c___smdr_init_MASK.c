#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cvmx_shmem_smdr {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  base_addr; } ;
typedef  TYPE_1__ cvmx_bootmem_named_block_desc_t ;

/* Variables and functions */
 char* CVMX_SHMEM_DSCPTR_NAME ; 
 struct cvmx_shmem_smdr* __smdr ; 
 int /*<<< orphan*/  FUNC0 (struct cvmx_shmem_smdr*) ; 
 scalar_t__ FUNC1 (size_t,int,char*) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct cvmx_shmem_smdr *FUNC7()
{
    const cvmx_bootmem_named_block_desc_t *smdr_nblk = NULL;
    size_t smdr_size = sizeof(*__smdr);
    char *smdr_name = CVMX_SHMEM_DSCPTR_NAME;

    __smdr = (struct cvmx_shmem_smdr *) FUNC1(smdr_size, 0x10000, smdr_name);

    if (__smdr)
       FUNC0 (__smdr);
    else
    {
        /* Check if SMDR exists already */
        smdr_nblk = FUNC2(smdr_name);
        if (smdr_nblk)
        {
            __smdr = (struct cvmx_shmem_smdr *)
            (FUNC4(smdr_nblk->base_addr));

            FUNC5 (&__smdr->lock);
            if (smdr_nblk->size != smdr_size)
            {
                FUNC3("SMDR named block is created by another "
                    "application with different size %lu, "
                    "expecting %lu \n",
                    (long unsigned int)smdr_nblk->size, (long unsigned int)smdr_size);
                __smdr = NULL;
            }
            FUNC6 (&__smdr->lock);
        }
    }

   if (!__smdr)
       FUNC3("cvmx_shmem: Failed to allocate or find SMDR from bootmem \n");

   return __smdr;
}