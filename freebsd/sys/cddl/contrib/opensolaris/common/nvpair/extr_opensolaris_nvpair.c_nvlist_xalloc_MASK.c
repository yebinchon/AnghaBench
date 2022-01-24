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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  nvpriv_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nv_alloc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(nvlist_t **nvlp, uint_t nvflag, nv_alloc_t *nva)
{
	nvpriv_t *priv;

	if (nvlp == NULL || nva == NULL)
		return (EINVAL);

	if ((priv = FUNC3(nva)) == NULL)
		return (ENOMEM);

	if ((*nvlp = FUNC2(priv,
	    FUNC0(sizeof (nvlist_t)))) == NULL) {
		FUNC1(priv, priv, sizeof (nvpriv_t));
		return (ENOMEM);
	}

	FUNC4(*nvlp, nvflag, priv);

	return (0);
}