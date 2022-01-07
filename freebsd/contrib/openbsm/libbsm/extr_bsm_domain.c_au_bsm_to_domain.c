
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct bsm_domain {int bd_local_domain; } ;


 struct bsm_domain* bsm_lookup_bsm_domain (int ) ;

int
au_bsm_to_domain(u_short bsm_domain, int *local_domainp)
{
 const struct bsm_domain *bstp;

 bstp = bsm_lookup_bsm_domain(bsm_domain);
 if (bstp == ((void*)0) || bstp->bd_local_domain)
  return (-1);
 *local_domainp = bstp->bd_local_domain;
 return (0);
}
