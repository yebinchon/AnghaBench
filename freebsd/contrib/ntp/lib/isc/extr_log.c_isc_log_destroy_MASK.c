#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_8__ {char* buffer; scalar_t__ magic; int /*<<< orphan*/ * mctx; scalar_t__ module_count; int /*<<< orphan*/ * modules; scalar_t__ category_count; int /*<<< orphan*/ * categories; scalar_t__ debug_level; int /*<<< orphan*/  text; int /*<<< orphan*/  messages; int /*<<< orphan*/  lock; int /*<<< orphan*/ * logconfig; } ;
typedef  TYPE_1__ isc_logmessage_t ;
typedef  int /*<<< orphan*/  isc_logconfig_t ;
typedef  TYPE_1__ isc_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  link ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(isc_log_t **lctxp) {
	isc_log_t *lctx;
	isc_logconfig_t *lcfg;
	isc_mem_t *mctx;
	isc_logmessage_t *message;

	FUNC3(lctxp != NULL && FUNC4(*lctxp));

	lctx = *lctxp;
	mctx = lctx->mctx;

	if (lctx->logconfig != NULL) {
		lcfg = lctx->logconfig;
		lctx->logconfig = NULL;
		FUNC5(&lcfg);
	}

	FUNC0(&lctx->lock);

	while ((message = FUNC1(lctx->messages)) != NULL) {
		FUNC2(lctx->messages, message, link);

		FUNC6(mctx, message,
			    sizeof(*message) + FUNC7(message->text) + 1);
	}

	lctx->buffer[0] = '\0';
	lctx->debug_level = 0;
	lctx->categories = NULL;
	lctx->category_count = 0;
	lctx->modules = NULL;
	lctx->module_count = 0;
	lctx->mctx = NULL;
	lctx->magic = 0;

	FUNC6(mctx, lctx, sizeof(*lctx));

	*lctxp = NULL;
}