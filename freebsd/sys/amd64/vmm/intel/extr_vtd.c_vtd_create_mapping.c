
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;


 int CREATE_MAPPING ;
 int vtd_update_mapping (void*,int ,int ,int ,int ) ;

__attribute__((used)) static uint64_t
vtd_create_mapping(void *arg, vm_paddr_t gpa, vm_paddr_t hpa, uint64_t len)
{

 return (vtd_update_mapping(arg, gpa, hpa, len, CREATE_MAPPING));
}
