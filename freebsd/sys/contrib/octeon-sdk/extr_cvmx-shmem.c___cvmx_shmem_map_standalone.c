
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {void* vaddr; int size; int paddr; } ;


 int CAST64 (void*) ;
 int TLB_DIRTY ;
 int TLB_GLOBAL ;
 int TLB_VALID ;
 int cvmx_dprintf (char*,...) ;
 int cvmx_tlb_allocate_runtime_entry () ;
 int cvmx_tlb_write_runtime_entry (int,int ,int ,int ,int) ;

void *__cvmx_shmem_map_standalone(struct cvmx_shmem_dscptr *dscptr, int pflag)
{
    int free_index;


    free_index = cvmx_tlb_allocate_runtime_entry();

    if (free_index < 0 )
    {
        cvmx_dprintf("cvmx-shmem: shmem_map failed, out TLB entries \n");
        return ((void*)0);
    }







    cvmx_tlb_write_runtime_entry(free_index, CAST64(dscptr->vaddr),
            dscptr->paddr, dscptr->size,
            TLB_DIRTY | TLB_VALID | TLB_GLOBAL);

    return dscptr -> vaddr;
}
