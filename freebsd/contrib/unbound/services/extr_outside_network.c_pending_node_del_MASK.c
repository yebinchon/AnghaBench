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
struct pending {int dummy; } ;
struct outside_network {int dummy; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct outside_network*,struct pending*) ; 

__attribute__((used)) static void
FUNC1(rbnode_type* node, void* arg)
{
	struct pending* pend = (struct pending*)node;
	struct outside_network* outnet = (struct outside_network*)arg;
	FUNC0(outnet, pend);
}