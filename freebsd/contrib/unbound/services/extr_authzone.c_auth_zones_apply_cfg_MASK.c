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
struct config_file {struct config_auth* auths; } ;
struct config_auth {scalar_t__* name; struct config_auth* next; } ;
struct auth_zones {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_zones*,struct config_auth*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_zones*) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_zones*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_zones*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct auth_zones* az, struct config_file* cfg,
	int setup)
{
	struct config_auth* p;
	FUNC4(az);
	for(p = cfg->auths; p; p = p->next) {
		if(!p->name || p->name[0] == 0) {
			FUNC6("auth-zone without a name, skipped");
			continue;
		}
		if(!FUNC0(az, p)) {
			FUNC5("cannot config auth zone %s", p->name);
			return 0;
		}
	}
	FUNC3(az);
	if(!FUNC1(az, cfg))
		return 0;
	if(setup) {
		if(!FUNC2(az))
			return 0;
	}
	return 1;
}