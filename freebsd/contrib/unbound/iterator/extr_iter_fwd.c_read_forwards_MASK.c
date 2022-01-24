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
typedef  void* uint8_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {void* ssl_upstream; int /*<<< orphan*/  no_cache; void* has_parent_side_NS; } ;
struct config_stub {scalar_t__ ssl_upstream; int /*<<< orphan*/  no_cache; int /*<<< orphan*/  isfirst; struct config_stub* next; } ;
struct config_file {struct config_stub* forwards; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_forwards*,int /*<<< orphan*/ ,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_stub*,struct delegpt*) ; 
 int /*<<< orphan*/  FUNC4 (struct config_stub*,struct delegpt*) ; 
 struct delegpt* FUNC5 (struct config_stub*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int 
FUNC7(struct iter_forwards* fwd, struct config_file* cfg)
{
	struct config_stub* s;
	for(s = cfg->forwards; s; s = s->next) {
		struct delegpt* dp;
		if(!(dp=FUNC5(s)))
			return 0;
		if(!FUNC4(s, dp) || !FUNC3(s, dp)) {
			FUNC0(dp);
			return 0;
		}
		/* set flag that parent side NS information is included.
		 * Asking a (higher up) server on the internet is not useful */
		/* the flag is turned off for 'forward-first' so that the
		 * last resort will ask for parent-side NS record and thus
		 * fallback to the internet name servers on a failure */
		dp->has_parent_side_NS = (uint8_t)!s->isfirst;
		/* Do not cache if set. */
		dp->no_cache = s->no_cache;
		/* use SSL for queries to this forwarder */
		dp->ssl_upstream = (uint8_t)s->ssl_upstream;
		FUNC6(VERB_QUERY, "Forward zone server list:");
		FUNC1(VERB_QUERY, dp);
		if(!FUNC2(fwd, LDNS_RR_CLASS_IN, dp))
			return 0;
	}
	return 1;
}