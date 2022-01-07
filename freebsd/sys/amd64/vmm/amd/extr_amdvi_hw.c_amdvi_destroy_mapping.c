
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;
struct amdvi_domain {scalar_t__ ptp; } ;


 int amdvi_update_mapping (struct amdvi_domain*,int ,int ,int ,int) ;

__attribute__((used)) static uint64_t
amdvi_destroy_mapping(void *arg, vm_paddr_t gpa, uint64_t len)
{
 struct amdvi_domain *domain;

 domain = (struct amdvi_domain *)arg;




 if (domain->ptp)
  return (amdvi_update_mapping(domain, gpa, 0, len, 0));
 return
     (len);
}
