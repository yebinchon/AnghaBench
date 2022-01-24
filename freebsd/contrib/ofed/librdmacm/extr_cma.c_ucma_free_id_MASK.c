#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct cma_id_private* path_rec; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; TYPE_2__ route; } ;
struct cma_id_private {struct cma_id_private* connect; scalar_t__ connect_len; TYPE_1__ id; scalar_t__ sync; int /*<<< orphan*/  mut; int /*<<< orphan*/  cond; scalar_t__ cma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma_id_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cma_id_private*) ; 

__attribute__((used)) static void FUNC6(struct cma_id_private *id_priv)
{
	FUNC5(id_priv);
	if (id_priv->cma_dev)
		FUNC4(id_priv->cma_dev);
	FUNC1(&id_priv->cond);
	FUNC2(&id_priv->mut);
	if (id_priv->id.route.path_rec)
		FUNC0(id_priv->id.route.path_rec);

	if (id_priv->sync)
		FUNC3(id_priv->id.channel);
	if (id_priv->connect_len)
		FUNC0(id_priv->connect);
	FUNC0(id_priv);
}