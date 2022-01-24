#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_6__ {int /*<<< orphan*/ * tag; TYPE_1__* lctx; } ;
typedef  TYPE_2__ isc_logconfig_t ;
struct TYPE_5__ {int /*<<< orphan*/  mctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 

isc_result_t
FUNC4(isc_logconfig_t *lcfg, const char *tag) {
	FUNC0(FUNC1(lcfg));

	if (tag != NULL && *tag != '\0') {
		if (lcfg->tag != NULL)
			FUNC2(lcfg->lctx->mctx, lcfg->tag);
		lcfg->tag = FUNC3(lcfg->lctx->mctx, tag);
		if (lcfg->tag == NULL)
			return (ISC_R_NOMEMORY);

	} else {
		if (lcfg->tag != NULL)
			FUNC2(lcfg->lctx->mctx, lcfg->tag);
		lcfg->tag = NULL;
	}

	return (ISC_R_SUCCESS);
}