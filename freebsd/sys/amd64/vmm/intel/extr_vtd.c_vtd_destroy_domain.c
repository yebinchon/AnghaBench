
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int pt_levels; int ptp; } ;


 int M_VTD ;
 int SLIST_REMOVE (int *,struct domain*,int ,int ) ;
 int domain ;
 int domhead ;
 int free (struct domain*,int ) ;
 int next ;
 int vtd_free_ptp (int ,int ) ;

__attribute__((used)) static void
vtd_destroy_domain(void *arg)
{
 struct domain *dom;

 dom = arg;

 SLIST_REMOVE(&domhead, dom, domain, next);
 vtd_free_ptp(dom->ptp, dom->pt_levels);
 free(dom, M_VTD);
}
