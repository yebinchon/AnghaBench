#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct module_env {int /*<<< orphan*/ * worker; } ;
struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_2__ {struct module_env* env; int /*<<< orphan*/ * worker; int /*<<< orphan*/ * chunks_last; int /*<<< orphan*/ * chunks_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_xfer*,struct auth_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_xfer*) ; 

__attribute__((used)) static void
FUNC4(struct auth_xfer* xfr, struct module_env* env,
	struct auth_master* master)
{
	FUNC0(xfr->task_transfer != NULL);
	FUNC0(xfr->task_transfer->worker == NULL);
	FUNC0(xfr->task_transfer->chunks_first == NULL);
	FUNC0(xfr->task_transfer->chunks_last == NULL);
	xfr->task_transfer->worker = env->worker;
	xfr->task_transfer->env = env;

	/* init transfer process */
	/* find that master in the transfer's list of masters? */
	FUNC2(xfr, master);
	/* start lookup for hostnames in transfer master list */
	FUNC3(xfr);

	/* initiate TCP, and set timeout on it */
	FUNC1(xfr, env);
}