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
struct cma_multicast {TYPE_1__* id_priv; int /*<<< orphan*/  cond; int /*<<< orphan*/  events_completed; } ;
struct TYPE_2__ {int /*<<< orphan*/  mut; int /*<<< orphan*/  cond; int /*<<< orphan*/  events_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cma_multicast *mc)
{
	FUNC1(&mc->id_priv->mut);
	mc->events_completed++;
	FUNC0(&mc->cond);
	mc->id_priv->events_completed++;
	FUNC0(&mc->id_priv->cond);
	FUNC2(&mc->id_priv->mut);
}