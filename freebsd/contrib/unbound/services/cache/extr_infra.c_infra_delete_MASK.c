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
struct infra_cache {int /*<<< orphan*/  client_ip_rates; int /*<<< orphan*/  domain_limits; int /*<<< orphan*/  domain_rates; int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  domain_limit_free ; 
 int /*<<< orphan*/  FUNC0 (struct infra_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void 
FUNC3(struct infra_cache* infra)
{
	if(!infra)
		return;
	FUNC1(infra->hosts);
	FUNC1(infra->domain_rates);
	FUNC2(&infra->domain_limits, domain_limit_free, NULL);
	FUNC1(infra->client_ip_rates);
	FUNC0(infra);
}