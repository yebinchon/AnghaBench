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
struct module_func_block {int /*<<< orphan*/  (* deinit ) (struct module_env*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* init ) (struct module_env*,int /*<<< orphan*/ ) ;} ;
struct module_env {int /*<<< orphan*/  scratch; int /*<<< orphan*/  scratch_buffer; struct config_file* cfg; } ;
struct config_file {int dummy; } ;
typedef  int /*<<< orphan*/  env ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_env*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct module_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct module_env*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct config_file* cfg, struct module_func_block* fb)
{
	struct module_env env;
	FUNC3(&env, 0, sizeof(env));
	env.cfg = cfg;
	env.scratch = FUNC4();
	env.scratch_buffer = FUNC7(BUFSIZ);
	if(!env.scratch || !env.scratch_buffer)
		FUNC2("out of memory");
	if(!FUNC1(&env))
		FUNC2("out of memory");
	if(!(*fb->init)(&env, 0)) {
		FUNC2("bad config for %s module", fb->name);
	}
	(*fb->deinit)(&env, 0);
	FUNC6(env.scratch_buffer);
	FUNC5(env.scratch);
	FUNC0(&env);
}