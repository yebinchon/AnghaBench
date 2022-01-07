
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_shmem_dscptr {int dummy; } ;


 int __cvmx_shmem_smdr_match_name ;
 struct cvmx_shmem_dscptr* __smdr_iterator (int ,char*) ;

__attribute__((used)) static struct cvmx_shmem_dscptr *__cvmx_shmem_smdr_find_by_name(char *name)
{
    return __smdr_iterator( __cvmx_shmem_smdr_match_name, name);
}
