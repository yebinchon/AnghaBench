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
struct config_stub {int /*<<< orphan*/  addrs; int /*<<< orphan*/  hosts; struct config_stub* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config_stub*) ; 

void
FUNC2(struct config_stub* p)
{
	if(!p) return;
	FUNC1(p->name);
	FUNC0(p->hosts);
	FUNC0(p->addrs);
	FUNC1(p);
}