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
struct ib_cm_device {int dummy; } ;
struct TYPE_2__ {void* context; struct ib_cm_device* device; } ;
struct cm_id_private {int /*<<< orphan*/  cond; int /*<<< orphan*/  mut; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm_id_private*) ; 
 struct cm_id_private* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cm_id_private *FUNC5(struct ib_cm_device *device,
					    void *context)
{
	struct cm_id_private *cm_id_priv;

	cm_id_priv = FUNC1(sizeof *cm_id_priv);
	if (!cm_id_priv)
		return NULL;

	FUNC2(cm_id_priv, 0, sizeof *cm_id_priv);
	cm_id_priv->id.device = device;
	cm_id_priv->id.context = context;
	FUNC4(&cm_id_priv->mut, NULL);
	if (FUNC3(&cm_id_priv->cond, NULL))
		goto err;

	return cm_id_priv;

err:	FUNC0(cm_id_priv);
	return NULL;
}