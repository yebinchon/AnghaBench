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
struct ib_user_mad {int /*<<< orphan*/  addr; int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  status; int /*<<< orphan*/  agent_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void *umad)
{
	struct ib_user_mad *mad = umad;

	FUNC0("agent id %d status %x timeout %d",
	       mad->agent_id, mad->status, mad->timeout_ms);
	FUNC1(&mad->addr);
}