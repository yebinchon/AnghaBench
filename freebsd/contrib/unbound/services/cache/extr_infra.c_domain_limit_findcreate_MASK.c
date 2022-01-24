#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* key; } ;
struct TYPE_4__ {size_t len; int labs; int /*<<< orphan*/  dclass; struct domain_limit_data* name; TYPE_1__ node; } ;
struct domain_limit_data {int lim; int below; TYPE_2__ node; } ;
typedef  struct domain_limit_data uint8_t ;
struct infra_cache {int /*<<< orphan*/  domain_limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (struct domain_limit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct domain_limit_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct domain_limit_data*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,struct domain_limit_data*,size_t,int,int /*<<< orphan*/ ) ; 
 struct domain_limit_data* FUNC6 (char*,size_t*) ; 

__attribute__((used)) static struct domain_limit_data* FUNC7(
	struct infra_cache* infra, char* name)
{
	uint8_t* nm;
	int labs;
	size_t nmlen;
	struct domain_limit_data* d;

	/* parse name */
	nm = FUNC6(name, &nmlen);
	if(!nm) {
		FUNC3("could not parse %s", name);
		return NULL;
	}
	labs = FUNC1(nm);

	/* can we find it? */
	d = (struct domain_limit_data*)FUNC4(&infra->domain_limits,
		nm, nmlen, labs, LDNS_RR_CLASS_IN);
	if(d) {
		FUNC2(nm);
		return d;
	}
	
	/* create it */
	d = (struct domain_limit_data*)FUNC0(1, sizeof(*d));
	if(!d) {
		FUNC2(nm);
		return NULL;
	}
	d->node.node.key = &d->node;
	d->node.name = nm;
	d->node.len = nmlen;
	d->node.labs = labs;
	d->node.dclass = LDNS_RR_CLASS_IN;
	d->lim = -1;
	d->below = -1;
	if(!FUNC5(&infra->domain_limits, &d->node, nm, nmlen,
		labs, LDNS_RR_CLASS_IN)) {
		FUNC3("duplicate element in domainlimit tree");
		FUNC2(nm);
		FUNC2(d);
		return NULL;
	}
	return d;
}