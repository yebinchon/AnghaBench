
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {scalar_t__ use_count; int lock; int name; scalar_t__ is_named_block; } ;


 int __cvmx_shmem_smdr_free (struct cvmx_shmem_dscptr*) ;
 int cvmx_bootmem_phy_named_block_free (int ,int ) ;
 int cvmx_dprintf (char*,int ) ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;

__attribute__((used)) static inline int __cvmx_shmem_close_dscptr(struct cvmx_shmem_dscptr *dscptr, int remove)
{
    cvmx_spinlock_lock(&dscptr->lock);

    if (dscptr->use_count >0)
        dscptr->use_count-= 1;

    if ((dscptr->use_count == 0) && remove)
    {

        __cvmx_shmem_smdr_free(dscptr);



        if (dscptr->is_named_block)
        {



            cvmx_bootmem_phy_named_block_free(dscptr->name, 0);
        }
    }
    cvmx_spinlock_unlock(&dscptr->lock);
    return 0;
}
