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
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(const char* desc, char** ss,
	const char* chrootdir, struct config_file* cfg)
{
	char* str = *ss;
	if(str && str[0]) {
		*ss = FUNC1(str, cfg, 1);
		if(!*ss) FUNC0("out of memory");
		if(!FUNC3(*ss)) {
			if(chrootdir && chrootdir[0])
				FUNC0("%s: \"%s\" does not exist in "
					"chrootdir %s", desc, str, chrootdir);
			else
				FUNC0("%s: \"%s\" does not exist",
					desc, str);
		}
		/* put in a new full path for continued checking */
		FUNC2(str);
	}
}