
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_cache {int client_ip_rates; int domain_limits; int domain_rates; int hosts; } ;


 int domain_limit_free ;
 int free (struct infra_cache*) ;
 int slabhash_delete (int ) ;
 int traverse_postorder (int *,int ,int *) ;

void
infra_delete(struct infra_cache* infra)
{
 if(!infra)
  return;
 slabhash_delete(infra->hosts);
 slabhash_delete(infra->domain_rates);
 traverse_postorder(&infra->domain_limits, domain_limit_free, ((void*)0));
 slabhash_delete(infra->client_ip_rates);
 free(infra);
}
