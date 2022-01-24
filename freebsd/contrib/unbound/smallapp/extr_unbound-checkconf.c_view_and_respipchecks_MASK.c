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
struct views {int dummy; } ;
struct respip_set {int dummy; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct respip_set*,struct config_file*) ; 
 struct respip_set* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct respip_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct views*,struct config_file*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct views*,struct config_file*) ; 
 struct views* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct views*) ; 

__attribute__((used)) static void
FUNC8(struct config_file* cfg)
{
	struct views* views = NULL;
	struct respip_set* respip = NULL;
	int ignored = 0;
	if(!(views = FUNC6()))
		FUNC0("Could not create views: out of memory");
	if(!(respip = FUNC2()))
		FUNC0("Could not create respip set: out of memory");
	if(!FUNC5(views, cfg))
		FUNC0("Could not set up views");
	if(!FUNC1(respip, cfg))
		FUNC0("Could not setup respip set");
	if(!FUNC4(views, cfg, &ignored))
		FUNC0("Could not setup per-view respip sets");
	FUNC7(views);
	FUNC3(respip);
}