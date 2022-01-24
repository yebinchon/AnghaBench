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
struct ctrl_iface_global_priv {scalar_t__ sock; int /*<<< orphan*/  ctrl_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ctrl_iface_global_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct ctrl_iface_global_priv *priv)
{
	if (priv->sock >= 0) {
		FUNC1(priv->sock);
		FUNC0(priv->sock);
	}

	FUNC3(priv->ctrl_dst);
	FUNC2(priv);
}