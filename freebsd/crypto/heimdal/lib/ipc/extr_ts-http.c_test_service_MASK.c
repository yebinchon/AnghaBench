#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  heim_sipc_call ;
typedef  int /*<<< orphan*/  (* heim_ipc_complete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ;
struct TYPE_6__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_idata ;
typedef  int /*<<< orphan*/  heim_icred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(void *ctx, const heim_idata *req,
	     const heim_icred cred,
	     heim_ipc_complete complete,
	     heim_sipc_call cctx)
{
    heim_idata rep;
    FUNC0("got request\n");
    rep.length = 3;
    rep.data = FUNC1("hej");
    (*complete)(cctx, 0, &rep);
}