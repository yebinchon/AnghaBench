
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int vaddr; } ;


 int CAST64 (int ) ;
 int cvmx_dprintf (char*,int) ;
 int cvmx_tlb_free_runtime_entry (int) ;
 int cvmx_tlb_lookup (int ) ;

__attribute__((used)) static inline void
__cvmx_shmem_unmap_standalone(struct cvmx_shmem_dscptr *dscptr)
{
    int index;

    index = cvmx_tlb_lookup(CAST64(dscptr->vaddr));





    cvmx_tlb_free_runtime_entry(index);
}
