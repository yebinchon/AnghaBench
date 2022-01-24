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
struct infra_cache {int dummy; } ;
struct domain_limit_data {void* below; void* lim; } ;
struct config_str2list {int /*<<< orphan*/  str2; int /*<<< orphan*/  str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* ratelimit_below_domain; struct config_str2list* ratelimit_for_domain; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct domain_limit_data* FUNC1 (struct infra_cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct infra_cache* infra,
	struct config_file* cfg)
{
	struct config_str2list* p;
	struct domain_limit_data* d;
	for(p = cfg->ratelimit_for_domain; p; p = p->next) {
		d = FUNC1(infra, p->str);
		if(!d)
			return 0;
		d->lim = FUNC0(p->str2);
	}
	for(p = cfg->ratelimit_below_domain; p; p = p->next) {
		d = FUNC1(infra, p->str);
		if(!d)
			return 0;
		d->below = FUNC0(p->str2);
	}
	return 1;
}