#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nvp_stat; scalar_t__ nvl_priv; TYPE_3__* nvp_list; } ;
typedef  TYPE_1__ nvpriv_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  TYPE_1__ nvlist_t ;
struct TYPE_10__ {struct TYPE_10__* nvi_next; int /*<<< orphan*/  nvi_nvp; } ;
typedef  TYPE_3__ i_nvp_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NV_STAT_EMBEDDED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(nvlist_t *nvl)
{
	nvpriv_t *priv;
	i_nvp_t *curr;

	if (nvl == NULL ||
	    (priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv) == NULL)
		return;

	/*
	 * Unpacked nvlist are linked through i_nvp_t
	 */
	curr = priv->nvp_list;
	while (curr != NULL) {
		nvpair_t *nvp = &curr->nvi_nvp;
		curr = curr->nvi_next;

		FUNC3(nvp);
		FUNC2(nvl, nvp);
	}

	if (!(priv->nvp_stat & NV_STAT_EMBEDDED))
		FUNC1(priv, nvl, FUNC0(sizeof (nvlist_t)));
	else
		nvl->nvl_priv = 0;

	FUNC4(priv);
	FUNC1(priv, priv, sizeof (nvpriv_t));
}