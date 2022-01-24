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
struct pending {int /*<<< orphan*/  pc; struct outside_network* outnet; } ;
struct outside_network {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct outside_network*) ; 
 int /*<<< orphan*/  FUNC1 (struct outside_network*,struct pending*) ; 
 int /*<<< orphan*/  FUNC2 (struct outside_network*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(void* arg)
{
	struct pending* p = (struct pending*)arg;
	struct outside_network* outnet = p->outnet;
	FUNC3(VERB_ALGO, "timeout udp with delay");
	FUNC2(outnet, p->pc);
	FUNC1(outnet, p);
	FUNC0(outnet);
}