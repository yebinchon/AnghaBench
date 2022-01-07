
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int dummy; } ;


 int __cvmx_shmem_close_dscptr (struct cvmx_shmem_dscptr*,int) ;

__attribute__((used)) static inline int __cvmx_shmem_close_standalone(struct cvmx_shmem_dscptr *dscptr, int remove)
{
    return __cvmx_shmem_close_dscptr(dscptr, remove);
}
