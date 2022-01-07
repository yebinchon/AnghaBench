
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_smdr {int dummy; } ;


 struct cvmx_shmem_smdr* __smdr_init () ;

struct cvmx_shmem_smdr *cvmx_shmem_init()
{
    return __smdr_init();
}
