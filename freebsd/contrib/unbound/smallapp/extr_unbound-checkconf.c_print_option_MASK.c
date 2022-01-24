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
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* auto_trust_anchor_file_list; int /*<<< orphan*/  pidfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_file*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_print_func ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(struct config_file* cfg, const char* opt, int final)
{
	if(FUNC5(opt, "pidfile") == 0 && final) {
		char *p = FUNC2(cfg->pidfile, cfg, 1);
		if(!p) FUNC1("out of memory");
		FUNC4("%s\n", p);
		FUNC3(p);
		return;
	}
	if(FUNC5(opt, "auto-trust-anchor-file") == 0 && final) {
		struct config_strlist* s = cfg->auto_trust_anchor_file_list;
		for(; s; s=s->next) {
			char *p = FUNC2(s->str, cfg, 1);
			if(!p) FUNC1("out of memory");
			FUNC4("%s\n", p);
			FUNC3(p);
		}
		return;
	}
	if(!FUNC0(cfg, opt, config_print_func, stdout))
		FUNC1("cannot print option '%s'", opt);
}