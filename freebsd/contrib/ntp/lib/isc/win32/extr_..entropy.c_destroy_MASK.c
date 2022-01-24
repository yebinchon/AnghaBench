#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_1__ isc_entropysource_t ;
struct TYPE_9__ {scalar_t__ refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  pool; int /*<<< orphan*/ * mctx; int /*<<< orphan*/  sources; } ;
typedef  TYPE_2__ isc_entropy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  ENTROPY_SOURCETYPE_FILE 129 
#define  ENTROPY_SOURCETYPE_USOCKET 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(isc_entropy_t **entp) {
	isc_entropy_t *ent;
	isc_entropysource_t *source;
	isc_mem_t *mctx;

	FUNC4(entp != NULL && *entp != NULL);
	ent = *entp;
	*entp = NULL;

	FUNC3(&ent->lock);

	FUNC4(ent->refcnt == 0);

	/*
	 * Here, detach non-sample sources.
	 */
	source = FUNC2(ent->sources);
	while (source != NULL) {
		switch(source->type) {
		case ENTROPY_SOURCETYPE_FILE:
		case ENTROPY_SOURCETYPE_USOCKET:
			FUNC6(&source);
			break;
		}
		source = FUNC2(ent->sources);
	}

	/*
	 * If there are other types of sources, we've found a bug.
	 */
	FUNC4(FUNC1(ent->sources));

	mctx = ent->mctx;

	FUNC7(&ent->pool);

	FUNC5(&ent->lock);

	FUNC0(&ent->lock);

	FUNC10(ent, 0, sizeof(isc_entropy_t));
	FUNC9(mctx, ent, sizeof(isc_entropy_t));
	FUNC8(&mctx);
}