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
struct dns64_env {int prefix_net; int /*<<< orphan*/  ignore_aaaa; int /*<<< orphan*/  prefix_addrlen; int /*<<< orphan*/  prefix_addr; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* dns64_ignore_aaaa; scalar_t__ dns64_prefix; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_DNS64_PREFIX ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dns64_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct dns64_env* dns64_env, struct config_file* cfg)
{
    struct config_strlist* s;
    FUNC5(VERB_ALGO, "dns64-prefix: %s", cfg->dns64_prefix);
    if (!FUNC4(cfg->dns64_prefix ? cfg->dns64_prefix :
                DEFAULT_DNS64_PREFIX, 0, &dns64_env->prefix_addr,
                &dns64_env->prefix_addrlen, &dns64_env->prefix_net)) {
        FUNC2("cannot parse dns64-prefix netblock: %s", cfg->dns64_prefix);
        return 0;
    }
    if (!FUNC0(&dns64_env->prefix_addr, dns64_env->prefix_addrlen)) {
        FUNC2("dns64_prefix is not IPv6: %s", cfg->dns64_prefix);
        return 0;
    }
    if (dns64_env->prefix_net < 0 || dns64_env->prefix_net > 96) {
        FUNC2("dns64-prefix length it not between 0 and 96: %s",
                cfg->dns64_prefix);
        return 0;
    }
    for(s = cfg->dns64_ignore_aaaa; s; s = s->next) {
	    if(!FUNC1(dns64_env, s->str))
		    return 0;
    }
    FUNC3(&dns64_env->ignore_aaaa);
    return 1;
}