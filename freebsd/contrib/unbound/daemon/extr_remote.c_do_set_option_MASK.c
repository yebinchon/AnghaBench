#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* cfg; scalar_t__* modinfo; TYPE_1__* mesh; } ;
struct worker {TYPE_2__ env; } ;
struct val_env {int /*<<< orphan*/  date_override; } ;
struct TYPE_6__ {int /*<<< orphan*/  val_date_override; } ;
struct TYPE_4__ {int /*<<< orphan*/  mods; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(RES* ssl, struct worker* worker, char* arg)
{
	char* arg2;
	if(!FUNC1(ssl, arg, &arg2))
		return;
	if(!FUNC0(worker->env.cfg, arg, arg2)) {
		(void)FUNC4(ssl, "error setting option\n");
		return;
	}
	/* effectuate some arguments */
	if(FUNC5(arg, "val-override-date:") == 0) {
		int m = FUNC2(&worker->env.mesh->mods, "validator");
		struct val_env* val_env = NULL;
		if(m != -1) val_env = (struct val_env*)worker->env.modinfo[m];
		if(val_env)
			val_env->date_override = worker->env.cfg->val_date_override;
	}
	FUNC3(ssl);
}