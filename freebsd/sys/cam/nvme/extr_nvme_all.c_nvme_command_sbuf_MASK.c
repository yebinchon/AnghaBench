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
struct sbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ func_code; } ;
struct ccb_nvmeio {int /*<<< orphan*/  cmd; TYPE_1__ ccb_h; } ;

/* Variables and functions */
 scalar_t__ XPT_NVME_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ccb_nvmeio *nvmeio, struct sbuf *sb)
{

	FUNC2(sb, "%s. NCB: ", FUNC1(&nvmeio->cmd,
	    nvmeio->ccb_h.func_code == XPT_NVME_ADMIN));
	FUNC0(&nvmeio->cmd, sb);
	return(0);
}