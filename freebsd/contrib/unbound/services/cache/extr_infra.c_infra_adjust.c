
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_key {int dummy; } ;
struct infra_data {int dummy; } ;
struct infra_cache {int domain_limits; int client_ip_rates; int domain_rates; int hosts; int host_ttl; } ;
struct config_file {int infra_cache_numhosts; size_t ratelimit_size; size_t ip_ratelimit_size; int ip_ratelimit_slabs; int ratelimit_slabs; int infra_cache_slabs; int ip_ratelimit; int ratelimit; int host_ttl; } ;


 int INFRA_BYTES_NAME ;
 int domain_limit_free ;
 struct infra_cache* infra_create (struct config_file*) ;
 int infra_delete (struct infra_cache*) ;
 int infra_dp_ratelimit ;
 int infra_ip_ratelimit ;
 int setup_domain_limits (struct infra_cache*,struct config_file*) ;
 int slabhash_is_size (int ,size_t,int ) ;
 int traverse_postorder (int *,int ,int *) ;

struct infra_cache*
infra_adjust(struct infra_cache* infra, struct config_file* cfg)
{
 size_t maxmem;
 if(!infra)
  return infra_create(cfg);
 infra->host_ttl = cfg->host_ttl;
 infra_dp_ratelimit = cfg->ratelimit;
 infra_ip_ratelimit = cfg->ip_ratelimit;
 maxmem = cfg->infra_cache_numhosts * (sizeof(struct infra_key)+
  sizeof(struct infra_data)+INFRA_BYTES_NAME);



 if(!slabhash_is_size(infra->hosts, maxmem, cfg->infra_cache_slabs) ||
    !slabhash_is_size(infra->domain_rates, cfg->ratelimit_size,
     cfg->ratelimit_slabs) ||
    !slabhash_is_size(infra->client_ip_rates, cfg->ip_ratelimit_size,
     cfg->ip_ratelimit_slabs)) {
  infra_delete(infra);
  infra = infra_create(cfg);
 } else {

  traverse_postorder(&infra->domain_limits, domain_limit_free,
   ((void*)0));
  if(!setup_domain_limits(infra, cfg)) {
   infra_delete(infra);
   return ((void*)0);
  }
 }
 return infra;
}
