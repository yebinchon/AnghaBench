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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct worker {int /*<<< orphan*/  cmd; } ;
typedef  enum worker_commands { ____Placeholder_worker_commands } worker_commands ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void 
FUNC3(struct worker* worker, enum worker_commands cmd)
{
	uint32_t c = (uint32_t)FUNC0(cmd);
	if(!FUNC2(worker->cmd, (uint8_t*)&c, sizeof(c), 0)) {
		FUNC1("worker send cmd %d failed", (int)cmd);
	}
}