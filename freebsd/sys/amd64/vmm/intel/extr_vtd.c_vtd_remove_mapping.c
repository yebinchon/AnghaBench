
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;


 int REMOVE_MAPPING ;
 int vtd_update_mapping (void*,int ,int ,int ,int ) ;

__attribute__((used)) static uint64_t
vtd_remove_mapping(void *arg, vm_paddr_t gpa, uint64_t len)
{

 return (vtd_update_mapping(arg, gpa, 0, len, REMOVE_MAPPING));
}
