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
struct config_file {scalar_t__ do_ip6; } ;
struct acl_list {int /*<<< orphan*/  tree; int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_list*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct acl_list*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct acl_list*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct acl_list*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct acl_list*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct acl_list*,struct config_file*,struct views*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int 
FUNC9(struct acl_list* acl, struct config_file* cfg,
	struct views* v)
{
	FUNC8(acl->region);
	FUNC1(&acl->tree);
	if(!FUNC3(acl, cfg))
		return 0;
	if(!FUNC7(acl, cfg, v))
		return 0;
	if(!FUNC6(acl, cfg))
		return 0;
	if(!FUNC4(acl, cfg))
		return 0;
	if(!FUNC5(acl, cfg))
		return 0;
	/* insert defaults, with '0' to ignore them if they are duplicates */
	if(!FUNC0(acl, "0.0.0.0/0", "refuse", 0))
		return 0;
	if(!FUNC0(acl, "127.0.0.0/8", "allow", 0))
		return 0;
	if(cfg->do_ip6) {
		if(!FUNC0(acl, "::0/0", "refuse", 0))
			return 0;
		if(!FUNC0(acl, "::1", "allow", 0))
			return 0;
		if(!FUNC0(acl, "::ffff:127.0.0.1", "allow", 0))
			return 0;
	}
	FUNC2(&acl->tree);
	return 1;
}