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
struct iter_hints {int /*<<< orphan*/  tree; } ;
struct delegpt {int dummy; } ;
struct config_file {int /*<<< orphan*/  do_ip6; int /*<<< orphan*/  do_ip4; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 struct delegpt* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_hints*) ; 
 int /*<<< orphan*/  FUNC2 (struct iter_hints*,int /*<<< orphan*/ ,struct delegpt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iter_hints*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iter_hints*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct iter_hints*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int 
FUNC9(struct iter_hints* hints, struct config_file* cfg)
{
	FUNC1(hints);
	FUNC4(&hints->tree);
	
	/* read root hints */
	if(!FUNC6(hints, cfg))
		return 0;

	/* read stub hints */
	if(!FUNC7(hints, cfg))
		return 0;

	/* use fallback compiletime root hints */
	if(!FUNC3(hints, LDNS_RR_CLASS_IN)) {
		struct delegpt* dp = FUNC0(cfg->do_ip4,
			cfg->do_ip6);
		FUNC8(VERB_ALGO, "no config, using builtin root hints.");
		if(!dp) 
			return 0;
		if(!FUNC2(hints, LDNS_RR_CLASS_IN, dp, 0))
			return 0;
	}

	FUNC5(&hints->tree);
	return 1;
}