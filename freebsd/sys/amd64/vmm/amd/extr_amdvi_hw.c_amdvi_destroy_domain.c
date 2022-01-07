
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_domain {int id; int ptp_level; scalar_t__ ptp; } ;


 int KASSERT (struct amdvi_domain*,char*) ;
 int M_AMDVI ;
 int SLIST_REMOVE (int *,struct amdvi_domain*,int ,int ) ;
 int amdvi_do_inv_domain (int,int) ;
 int amdvi_domain ;
 int amdvi_free_ptp (scalar_t__,int ) ;
 int dom_head ;
 int free (struct amdvi_domain*,int ) ;
 int next ;
 int printf (char*,int) ;

__attribute__((used)) static void
amdvi_destroy_domain(void *arg)
{
 struct amdvi_domain *domain;

 domain = (struct amdvi_domain *)arg;
 KASSERT(domain, ("domain is NULL"));



 if (domain->ptp)
  amdvi_free_ptp(domain->ptp, domain->ptp_level);

 amdvi_do_inv_domain(domain->id, 0);
 SLIST_REMOVE(&dom_head, domain, amdvi_domain, next);
 free(domain, M_AMDVI);
}
