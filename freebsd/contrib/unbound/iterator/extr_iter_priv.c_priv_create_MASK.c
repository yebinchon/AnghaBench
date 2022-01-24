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
struct iter_priv {int /*<<< orphan*/  n; int /*<<< orphan*/  a; int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iter_priv*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct iter_priv* FUNC5(void)
{
	struct iter_priv* priv = (struct iter_priv*)FUNC1(1, sizeof(*priv));
	if(!priv)
		return NULL;
	priv->region = FUNC4();
	if(!priv->region) {
		FUNC3(priv);
		return NULL;
	}
	FUNC0(&priv->a);
	FUNC2(&priv->n);
	return priv;
}