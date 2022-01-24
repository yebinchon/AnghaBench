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
struct TYPE_2__ {int /*<<< orphan*/  scratch_buffer; } ;
struct worker {TYPE_1__ env; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct worker*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct worker*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC3(RES* ssl, struct worker* worker)
{
	if(!FUNC1(ssl, worker))
		return 0;
	if(!FUNC0(ssl, worker))
		return 0;
	return FUNC2(ssl, worker->env.scratch_buffer, "EOF");
}