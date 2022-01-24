#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct infra_key {int dummy; } ;
struct infra_data {int dummy; } ;
struct infra_cache {int /*<<< orphan*/  domain_limits; int /*<<< orphan*/  client_ip_rates; int /*<<< orphan*/  domain_rates; int /*<<< orphan*/  hosts; int /*<<< orphan*/  host_ttl; } ;
struct config_file {int infra_cache_numhosts; size_t ratelimit_size; size_t ip_ratelimit_size; int /*<<< orphan*/  ip_ratelimit_slabs; int /*<<< orphan*/  ratelimit_slabs; int /*<<< orphan*/  infra_cache_slabs; int /*<<< orphan*/  ip_ratelimit; int /*<<< orphan*/  ratelimit; int /*<<< orphan*/  host_ttl; } ;

/* Variables and functions */
 int INFRA_BYTES_NAME ; 
 int /*<<< orphan*/  domain_limit_free ; 
 struct infra_cache* FUNC0 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct infra_cache*) ; 
 int /*<<< orphan*/  infra_dp_ratelimit ; 
 int /*<<< orphan*/  infra_ip_ratelimit ; 
 int /*<<< orphan*/  FUNC2 (struct infra_cache*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct infra_cache* 
FUNC5(struct infra_cache* infra, struct config_file* cfg)
{
	size_t maxmem;
	if(!infra)
		return FUNC0(cfg);
	infra->host_ttl = cfg->host_ttl;
	infra_dp_ratelimit = cfg->ratelimit;
	infra_ip_ratelimit = cfg->ip_ratelimit;
	maxmem = cfg->infra_cache_numhosts * (sizeof(struct infra_key)+
		sizeof(struct infra_data)+INFRA_BYTES_NAME);
	/* divide cachesize by slabs and multiply by slabs, because if the
	 * cachesize is not an even multiple of slabs, that is the resulting
	 * size of the slabhash */
	if(!FUNC3(infra->hosts, maxmem, cfg->infra_cache_slabs) ||
	   !FUNC3(infra->domain_rates, cfg->ratelimit_size,
	   	cfg->ratelimit_slabs) ||
	   !FUNC3(infra->client_ip_rates, cfg->ip_ratelimit_size,
	   	cfg->ip_ratelimit_slabs)) {
		FUNC1(infra);
		infra = FUNC0(cfg);
	} else {
		/* reapply domain limits */
		FUNC4(&infra->domain_limits, domain_limit_free,
			NULL);
		if(!FUNC2(infra, cfg)) {
			FUNC1(infra);
			return NULL;
		}
	}
	return infra;
}