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
struct infra_cache {void* client_ip_rates; void* domain_rates; int /*<<< orphan*/  host_ttl; void* hosts; } ;
struct config_file {int infra_cache_numhosts; size_t ratelimit_size; size_t ip_ratelimit_size; int /*<<< orphan*/  ip_ratelimit_slabs; int /*<<< orphan*/  ip_ratelimit; int /*<<< orphan*/  ratelimit_slabs; int /*<<< orphan*/  ratelimit; int /*<<< orphan*/  host_ttl; int /*<<< orphan*/  infra_cache_slabs; } ;

/* Variables and functions */
 int INFRA_BYTES_NAME ; 
 int /*<<< orphan*/  INFRA_HOST_STARTSIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct infra_cache*) ; 
 int /*<<< orphan*/  infra_compfunc ; 
 int /*<<< orphan*/  infra_deldatafunc ; 
 int /*<<< orphan*/  FUNC2 (struct infra_cache*) ; 
 int /*<<< orphan*/  infra_delkeyfunc ; 
 int /*<<< orphan*/  infra_dp_ratelimit ; 
 int /*<<< orphan*/  infra_ip_ratelimit ; 
 int /*<<< orphan*/  infra_sizefunc ; 
 int /*<<< orphan*/  ip_rate_compfunc ; 
 int /*<<< orphan*/  ip_rate_deldatafunc ; 
 int /*<<< orphan*/  ip_rate_delkeyfunc ; 
 int /*<<< orphan*/  ip_rate_sizefunc ; 
 int /*<<< orphan*/  rate_compfunc ; 
 int /*<<< orphan*/  rate_deldatafunc ; 
 int /*<<< orphan*/  rate_delkeyfunc ; 
 int /*<<< orphan*/  rate_sizefunc ; 
 int /*<<< orphan*/  FUNC3 (struct infra_cache*,struct config_file*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct infra_cache* 
FUNC5(struct config_file* cfg)
{
	struct infra_cache* infra = (struct infra_cache*)FUNC0(1, 
		sizeof(struct infra_cache));
	size_t maxmem = cfg->infra_cache_numhosts * (sizeof(struct infra_key)+
		sizeof(struct infra_data)+INFRA_BYTES_NAME);
	infra->hosts = FUNC4(cfg->infra_cache_slabs,
		INFRA_HOST_STARTSIZE, maxmem, &infra_sizefunc, &infra_compfunc,
		&infra_delkeyfunc, &infra_deldatafunc, NULL);
	if(!infra->hosts) {
		FUNC1(infra);
		return NULL;
	}
	infra->host_ttl = cfg->host_ttl;
	infra_dp_ratelimit = cfg->ratelimit;
	infra->domain_rates = FUNC4(cfg->ratelimit_slabs,
		INFRA_HOST_STARTSIZE, cfg->ratelimit_size,
		&rate_sizefunc, &rate_compfunc, &rate_delkeyfunc,
		&rate_deldatafunc, NULL);
	if(!infra->domain_rates) {
		FUNC2(infra);
		return NULL;
	}
	/* insert config data into ratelimits */
	if(!FUNC3(infra, cfg)) {
		FUNC2(infra);
		return NULL;
	}
	infra_ip_ratelimit = cfg->ip_ratelimit;
	infra->client_ip_rates = FUNC4(cfg->ip_ratelimit_slabs,
	    INFRA_HOST_STARTSIZE, cfg->ip_ratelimit_size, &ip_rate_sizefunc,
	    &ip_rate_compfunc, &ip_rate_delkeyfunc, &ip_rate_deldatafunc, NULL);
	if(!infra->client_ip_rates) {
		FUNC2(infra);
		return NULL;
	}
	return infra;
}