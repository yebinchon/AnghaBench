
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_domain {int id; } ;


 int KASSERT (struct amdvi_domain*,char*) ;
 int amdvi_do_inv_domain (int ,int) ;

__attribute__((used)) static void
amdvi_inv_tlb(void *arg)
{
 struct amdvi_domain *domain;

 domain = (struct amdvi_domain *)arg;
 KASSERT(domain, ("domain is NULL"));
 amdvi_do_inv_domain(domain->id, 0);
}
