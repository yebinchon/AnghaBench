
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;
struct amdvi_domain {scalar_t__ ptp; scalar_t__ id; } ;


 int amdvi_update_mapping (struct amdvi_domain*,int ,int ,int,int) ;
 int printf (char*) ;

__attribute__((used)) static uint64_t
amdvi_create_mapping(void *arg, vm_paddr_t gpa, vm_paddr_t hpa,
    uint64_t len)
{
 struct amdvi_domain *domain;

 domain = (struct amdvi_domain *)arg;

 if (domain->id && !domain->ptp) {
  printf("ptp is NULL");
  return (-1);
 }





 if (domain->ptp)
  return (amdvi_update_mapping(domain, gpa, hpa, len, 1));
 else
  return (len);
}
