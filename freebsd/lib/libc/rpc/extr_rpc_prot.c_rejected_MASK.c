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
struct TYPE_2__ {void* s2; void* s1; } ;
struct rpc_err {TYPE_1__ re_lb; int /*<<< orphan*/  re_status; } ;
typedef  void* int32_t ;
typedef  enum reject_stat { ____Placeholder_reject_stat } reject_stat ;

/* Variables and functions */
#define  AUTH_ERROR 129 
 scalar_t__ MSG_DENIED ; 
 int /*<<< orphan*/  RPC_AUTHERROR ; 
 int /*<<< orphan*/  RPC_FAILED ; 
#define  RPC_MISMATCH 128 
 int /*<<< orphan*/  RPC_VERSMISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC1(enum reject_stat rjct_stat, struct rpc_err *error)
{

	FUNC0(error != NULL);

	switch (rjct_stat) {
	case RPC_MISMATCH:
		error->re_status = RPC_VERSMISMATCH;
		return;

	case AUTH_ERROR:
		error->re_status = RPC_AUTHERROR;
		return;
	}
	/* something's wrong, but we don't know what ... */
	/* NOTREACHED */
	error->re_status = RPC_FAILED;
	error->re_lb.s1 = (int32_t)MSG_DENIED;
	error->re_lb.s2 = (int32_t)rjct_stat;
}