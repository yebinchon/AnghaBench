#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_logconfig_t ;
struct TYPE_9__ {int /*<<< orphan*/ * logconfig; int /*<<< orphan*/  magic; int /*<<< orphan*/  lock; int /*<<< orphan*/  messages; scalar_t__ debug_level; scalar_t__ module_count; int /*<<< orphan*/ * modules; scalar_t__ category_count; int /*<<< orphan*/ * categories; int /*<<< orphan*/ * mctx; } ;
typedef  TYPE_1__ isc_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  LCTX_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  isc_categories ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  isc_modules ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

isc_result_t
FUNC11(isc_mem_t *mctx, isc_log_t **lctxp, isc_logconfig_t **lcfgp) {
	isc_log_t *lctx;
	isc_logconfig_t *lcfg = NULL;
	isc_result_t result;

	FUNC1(mctx != NULL);
	FUNC1(lctxp != NULL && *lctxp == NULL);
	FUNC1(lcfgp == NULL || *lcfgp == NULL);

	lctx = FUNC7(mctx, sizeof(*lctx));
	if (lctx != NULL) {
		lctx->mctx = mctx;
		lctx->categories = NULL;
		lctx->category_count = 0;
		lctx->modules = NULL;
		lctx->module_count = 0;
		lctx->debug_level = 0;

		FUNC0(lctx->messages);

		result = FUNC9(&lctx->lock);
		if (result != ISC_R_SUCCESS) {
			FUNC8(mctx, lctx, sizeof(*lctx));
			return (result);
		}

		/*
		 * Normally setting the magic number is the last step done
		 * in a creation function, but a valid log context is needed
		 * by isc_log_registercategories and isc_logconfig_create.
		 * If either fails, the lctx is destroyed and not returned
		 * to the caller.
		 */
		lctx->magic = LCTX_MAGIC;

		FUNC3(lctx, isc_categories);
		FUNC4(lctx, isc_modules);
		result = FUNC5(lctx, &lcfg);

	} else
		result = ISC_R_NOMEMORY;

	if (result == ISC_R_SUCCESS)
		result = FUNC10(lcfg);

	if (result == ISC_R_SUCCESS) {
		lctx->logconfig = lcfg;

		*lctxp = lctx;
		if (lcfgp != NULL)
			*lcfgp = lcfg;

	} else {
		if (lcfg != NULL)
			FUNC6(&lcfg);
		if (lctx != NULL)
			FUNC2(&lctx);
	}

	return (result);
}