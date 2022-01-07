
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_key {int dummy; } ;
struct infra_data {int dummy; } ;
struct infra_cache {void* client_ip_rates; void* domain_rates; int host_ttl; void* hosts; } ;
struct config_file {int infra_cache_numhosts; size_t ratelimit_size; size_t ip_ratelimit_size; int ip_ratelimit_slabs; int ip_ratelimit; int ratelimit_slabs; int ratelimit; int host_ttl; int infra_cache_slabs; } ;


 int INFRA_BYTES_NAME ;
 int INFRA_HOST_STARTSIZE ;
 scalar_t__ calloc (int,int) ;
 int free (struct infra_cache*) ;
 int infra_compfunc ;
 int infra_deldatafunc ;
 int infra_delete (struct infra_cache*) ;
 int infra_delkeyfunc ;
 int infra_dp_ratelimit ;
 int infra_ip_ratelimit ;
 int infra_sizefunc ;
 int ip_rate_compfunc ;
 int ip_rate_deldatafunc ;
 int ip_rate_delkeyfunc ;
 int ip_rate_sizefunc ;
 int rate_compfunc ;
 int rate_deldatafunc ;
 int rate_delkeyfunc ;
 int rate_sizefunc ;
 int setup_domain_limits (struct infra_cache*,struct config_file*) ;
 void* slabhash_create (int ,int ,size_t,int *,int *,int *,int *,int *) ;

struct infra_cache*
infra_create(struct config_file* cfg)
{
 struct infra_cache* infra = (struct infra_cache*)calloc(1,
  sizeof(struct infra_cache));
 size_t maxmem = cfg->infra_cache_numhosts * (sizeof(struct infra_key)+
  sizeof(struct infra_data)+INFRA_BYTES_NAME);
 infra->hosts = slabhash_create(cfg->infra_cache_slabs,
  INFRA_HOST_STARTSIZE, maxmem, &infra_sizefunc, &infra_compfunc,
  &infra_delkeyfunc, &infra_deldatafunc, ((void*)0));
 if(!infra->hosts) {
  free(infra);
  return ((void*)0);
 }
 infra->host_ttl = cfg->host_ttl;
 infra_dp_ratelimit = cfg->ratelimit;
 infra->domain_rates = slabhash_create(cfg->ratelimit_slabs,
  INFRA_HOST_STARTSIZE, cfg->ratelimit_size,
  &rate_sizefunc, &rate_compfunc, &rate_delkeyfunc,
  &rate_deldatafunc, ((void*)0));
 if(!infra->domain_rates) {
  infra_delete(infra);
  return ((void*)0);
 }

 if(!setup_domain_limits(infra, cfg)) {
  infra_delete(infra);
  return ((void*)0);
 }
 infra_ip_ratelimit = cfg->ip_ratelimit;
 infra->client_ip_rates = slabhash_create(cfg->ip_ratelimit_slabs,
     INFRA_HOST_STARTSIZE, cfg->ip_ratelimit_size, &ip_rate_sizefunc,
     &ip_rate_compfunc, &ip_rate_delkeyfunc, &ip_rate_deldatafunc, ((void*)0));
 if(!infra->client_ip_rates) {
  infra_delete(infra);
  return ((void*)0);
 }
 return infra;
}
