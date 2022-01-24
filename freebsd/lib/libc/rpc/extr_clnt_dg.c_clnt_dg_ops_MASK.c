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
struct clnt_ops {int /*<<< orphan*/  cl_control; int /*<<< orphan*/  cl_destroy; int /*<<< orphan*/  cl_freeres; int /*<<< orphan*/  cl_geterr; int /*<<< orphan*/  cl_abort; int /*<<< orphan*/ * cl_call; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  clnt_dg_abort ; 
 int /*<<< orphan*/ * clnt_dg_call ; 
 int /*<<< orphan*/  clnt_dg_control ; 
 int /*<<< orphan*/  clnt_dg_destroy ; 
 int /*<<< orphan*/  clnt_dg_freeres ; 
 int /*<<< orphan*/  clnt_dg_geterr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ops_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct clnt_ops *
FUNC4(void)
{
	static struct clnt_ops ops;
	sigset_t mask;
	sigset_t newmask;

/* VARIABLES PROTECTED BY ops_lock: ops */

	FUNC2(&newmask);
	FUNC3(SIG_SETMASK, &newmask, &mask);
	FUNC0(&ops_lock);
	if (ops.cl_call == NULL) {
		ops.cl_call = clnt_dg_call;
		ops.cl_abort = clnt_dg_abort;
		ops.cl_geterr = clnt_dg_geterr;
		ops.cl_freeres = clnt_dg_freeres;
		ops.cl_destroy = clnt_dg_destroy;
		ops.cl_control = clnt_dg_control;
	}
	FUNC1(&ops_lock);
	FUNC3(SIG_SETMASK, &mask, NULL);
	return (&ops);
}