#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sample_queue_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_13__ {int /*<<< orphan*/  samplequeue; } ;
struct TYPE_14__ {TYPE_1__ sample; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; scalar_t__ total; TYPE_4__* ent; int /*<<< orphan*/  type; int /*<<< orphan*/  magic; TYPE_2__ sources; } ;
typedef  TYPE_3__ isc_entropysource_t ;
struct TYPE_16__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctx; int /*<<< orphan*/  nsources; int /*<<< orphan*/  sources; } ;
typedef  TYPE_4__ isc_entropy_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTROPY_SOURCETYPE_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SOURCE_MAGIC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 

isc_result_t
FUNC10(isc_entropy_t *ent,
			       isc_entropysource_t **sourcep)
{
	isc_result_t result;
	isc_entropysource_t *source;
	sample_queue_t *sq;

	FUNC3(FUNC5(ent));
	FUNC3(sourcep != NULL && *sourcep == NULL);

	FUNC2(&ent->lock);

	source = FUNC6(ent->mctx, sizeof(isc_entropysource_t));
	if (source == NULL) {
		result = ISC_R_NOMEMORY;
		goto errout;
	}

	sq = &source->sources.sample.samplequeue;
	result = FUNC9(ent, sq);
	if (result != ISC_R_SUCCESS)
		goto errout;

	/*
	 * From here down, no failures can occur.
	 */
	source->magic = SOURCE_MAGIC;
	source->type = ENTROPY_SOURCETYPE_SAMPLE;
	source->ent = ent;
	source->total = 0;
	FUNC8(source->name, 0, sizeof(source->name));
	FUNC0(source, link);

	/*
	 * Hook it into the entropy system.
	 */
	FUNC1(ent->sources, source, link);
	ent->nsources++;

	*sourcep = source;

	FUNC4(&ent->lock);
	return (ISC_R_SUCCESS);

 errout:
	if (source != NULL)
		FUNC7(ent->mctx, source, sizeof(isc_entropysource_t));

	FUNC4(&ent->lock);

	return (result);
}