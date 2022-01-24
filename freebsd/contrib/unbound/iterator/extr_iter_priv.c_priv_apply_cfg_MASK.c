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
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iter_priv*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct iter_priv*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct iter_priv* priv, struct config_file* cfg)
{
	/* empty the current contents */
	FUNC6(priv->region);
	FUNC0(&priv->a);
	FUNC2(&priv->n);

	/* read new contents */
	if(!FUNC4(priv, cfg))
		return 0;
	if(!FUNC5(priv, cfg))
		return 0;

	/* prepare for lookups */
	FUNC1(&priv->a);
	FUNC3(&priv->n);
	return 1;
}