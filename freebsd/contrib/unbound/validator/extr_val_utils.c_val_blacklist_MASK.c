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
struct sock_list {struct sock_list* next; } ;
struct regional {int dummy; } ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct sock_list**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct regional*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,struct sock_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock_list**,struct regional*,struct sock_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock_list**,struct sock_list*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ verbosity ; 

void FUNC5(struct sock_list** blacklist, struct regional* region,
	struct sock_list* origin, int cross)
{
	/* debug printout */
	if(verbosity >= VERB_ALGO) {
		struct sock_list* p;
		for(p=*blacklist; p; p=p->next)
			FUNC1(VERB_ALGO, "blacklist", p);
		if(!origin)
			FUNC4(VERB_ALGO, "blacklist add: cache");
		for(p=origin; p; p=p->next)
			FUNC1(VERB_ALGO, "blacklist add", p);
	}
	/* blacklist the IPs or the cache */
	if(!origin) {
		/* only add if nothing there. anything else also stops cache*/
		if(!*blacklist)
			FUNC0(blacklist, NULL, 0, region);
	} else if(!cross)
		FUNC3(blacklist, origin);
	else	FUNC2(blacklist, region, origin);
}