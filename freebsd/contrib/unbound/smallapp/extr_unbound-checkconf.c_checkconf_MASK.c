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
struct config_file {int /*<<< orphan*/  module_conf; } ;
typedef  int /*<<< orphan*/  oldwd ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct config_file*,int /*<<< orphan*/ ) ; 
 struct config_file* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct config_file*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC14 (struct config_file*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void
FUNC20(const char* cfgfile, const char* opt, int final)
{
	char oldwd[4096];
	struct config_file* cfg = FUNC5();
	if(!cfg)
		FUNC9("out of memory");
	oldwd[0] = 0;
	if(!FUNC10(oldwd, sizeof(oldwd))) {
		FUNC12("cannot getcwd: %s", FUNC17(errno));
		oldwd[0] = 0;
	}
	if(!FUNC7(cfg, cfgfile, NULL)) {
		/* config_read prints messages to stderr */
		FUNC6(cfg);
		FUNC8(1);
	}
	if(oldwd[0] && FUNC0(oldwd) == -1)
		FUNC12("cannot chdir(%s): %s", oldwd, FUNC17(errno));
	if(opt) {
		FUNC14(cfg, opt, final);
		FUNC6(cfg);
		return;
	}
	FUNC13(cfg);
	FUNC4(cfg, FUNC11());
	FUNC4(cfg, FUNC19());
#ifdef WITH_PYTHONMODULE
	if(strstr(cfg->module_conf, "python"))
		check_mod(cfg, pythonmod_get_funcblock());
#endif
	FUNC2(cfg);
	FUNC3(cfg);
	FUNC1(cfg);
	FUNC15("unbound-checkconf: no errors in %s\n", cfgfile);
	FUNC6(cfg);
}