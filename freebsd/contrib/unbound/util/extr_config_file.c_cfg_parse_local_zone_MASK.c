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
struct config_file {int /*<<< orphan*/  local_zones; int /*<<< orphan*/  local_zones_nodefault; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

int 
FUNC9(struct config_file* cfg, const char* val)
{
	const char *type, *name_end, *name;
	char buf[256];

	/* parse it as: [zone_name] [between stuff] [zone_type] */
	name = val;
	while(*name && FUNC2((unsigned char)*name))
		name++;
	if(!*name) {
		FUNC4("syntax error: too short: %s", val);
		return 0;
	}
	name_end = FUNC5(name);
	if(!name_end || !*name_end) {
		FUNC4("syntax error: expected zone type: %s", val);
		return 0;
	}
	if (name_end - name > 255) {
		FUNC4("syntax error: bad zone name: %s", val);
		return 0;
	}
	(void)FUNC8(buf, name, sizeof(buf));
	buf[name_end-name] = '\0';

	type = FUNC3(name_end);
	while(type && *type && FUNC2((unsigned char)*type))
		type++;
	if(!type || !*type) {
		FUNC4("syntax error: expected zone type: %s", val);
		return 0;
	}

	if(FUNC6(type, "nodefault")==0) {
		return FUNC1(&cfg->local_zones_nodefault, 
			FUNC7(name));
	} else {
		return FUNC0(&cfg->local_zones, FUNC7(buf),
			FUNC7(type));
	}
}