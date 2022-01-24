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
struct config_auth {struct config_auth* zonefile; int /*<<< orphan*/  allow_notify; int /*<<< orphan*/  urls; int /*<<< orphan*/  masters; struct config_auth* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config_auth*) ; 

void
FUNC2(struct config_auth* p)
{
	if(!p) return;
	FUNC1(p->name);
	FUNC0(p->masters);
	FUNC0(p->urls);
	FUNC0(p->allow_notify);
	FUNC1(p->zonefile);
	FUNC1(p);
}