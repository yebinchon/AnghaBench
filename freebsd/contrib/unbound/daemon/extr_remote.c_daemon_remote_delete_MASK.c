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
struct daemon_remote {scalar_t__ ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct daemon_remote*) ; 
 int /*<<< orphan*/  FUNC2 (struct daemon_remote*) ; 

void FUNC3(struct daemon_remote* rc)
{
	if(!rc) return;
	FUNC1(rc);
	if(rc->ctx) {
		FUNC0(rc->ctx);
	}
	FUNC2(rc);
}