#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nvp_nbuckets; int nvp_nentries; int /*<<< orphan*/ ** nvp_hashtable; } ;
typedef  TYPE_1__ nvpriv_t ;
typedef  int /*<<< orphan*/  i_nvp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void
FUNC2(nvpriv_t *priv)
{
	i_nvp_t **tab = priv->nvp_hashtable;
	if (tab == NULL) {
		FUNC0(priv->nvp_nbuckets);
		FUNC0(priv->nvp_nentries);
		return;
	}

	FUNC1(priv, tab, priv->nvp_nbuckets * sizeof (i_nvp_t *));

	priv->nvp_hashtable = NULL;
	priv->nvp_nbuckets = 0;
	priv->nvp_nentries = 0;
}