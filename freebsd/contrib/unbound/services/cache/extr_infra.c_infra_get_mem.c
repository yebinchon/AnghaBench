
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_cache {scalar_t__ client_ip_rates; scalar_t__ domain_rates; scalar_t__ hosts; } ;


 size_t slabhash_get_mem (scalar_t__) ;

size_t
infra_get_mem(struct infra_cache* infra)
{
 size_t s = sizeof(*infra) + slabhash_get_mem(infra->hosts);
 if(infra->domain_rates) s += slabhash_get_mem(infra->domain_rates);
 if(infra->client_ip_rates) s += slabhash_get_mem(infra->client_ip_rates);

 return s;
}
