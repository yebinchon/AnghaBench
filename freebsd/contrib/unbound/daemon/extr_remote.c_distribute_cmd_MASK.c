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
typedef  int /*<<< orphan*/  uint8_t ;
struct daemon_remote {TYPE_2__* worker; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {TYPE_1__* daemon; } ;
struct TYPE_4__ {int num; TYPE_3__** workers; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker_cmd_remote ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct daemon_remote* rc, RES* ssl, char* cmd)
{
	int i;
	if(!cmd || !ssl) 
		return;
	/* skip i=0 which is me */
	for(i=1; i<rc->worker->daemon->num; i++) {
		FUNC3(rc->worker->daemon->workers[i],
			worker_cmd_remote);
		if(!FUNC2(rc->worker->daemon->workers[i]->cmd,
			(uint8_t*)cmd, FUNC1(cmd)+1, 0)) {
			FUNC0(ssl, "error could not distribute cmd\n");
			return;
		}
	}
}