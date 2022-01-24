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

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct worker*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

void 
FUNC5(struct worker* worker)
{
	/* read the cmd string */
	uint8_t* msg = NULL;
	uint32_t len = 0;
	if(!FUNC3(worker->cmd, &msg, &len, 0)) {
		FUNC2("daemon_remote_exec: tube_read_msg failed");
		return;
	}
	FUNC4(VERB_ALGO, "remote exec distributed: %s", (char*)msg);
	FUNC0(NULL, NULL, (char*)msg, worker);
	FUNC1(msg);
}