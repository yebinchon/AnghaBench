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
struct cma_id_private {int /*<<< orphan*/  mut; int /*<<< orphan*/  cond; int /*<<< orphan*/  events_completed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cma_id_private *id_priv)
{
	FUNC1(&id_priv->mut);
	id_priv->events_completed++;
	FUNC0(&id_priv->cond);
	FUNC2(&id_priv->mut);
}