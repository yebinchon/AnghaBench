#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sample_queue_t ;
typedef  int /*<<< orphan*/  isc_uint32_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_9__ {int /*<<< orphan*/  samplequeue; } ;
struct TYPE_10__ {TYPE_1__ sample; } ;
struct TYPE_11__ {TYPE_2__ sources; TYPE_4__* ent; } ;
typedef  TYPE_3__ isc_entropysource_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ isc_entropy_t ;

/* Variables and functions */
 scalar_t__ ISC_R_QUEUEFULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 

isc_result_t
FUNC7(isc_entropysource_t *source, isc_uint32_t sample,
		      isc_uint32_t extra)
{
	isc_entropy_t *ent;
	sample_queue_t *sq;
	unsigned int entropy;
	isc_result_t result;

	FUNC1(FUNC3(source));

	ent = source->ent;

	FUNC0(&ent->lock);

	sq = &source->sources.sample.samplequeue;
	result = FUNC5(sq, sample, extra);
	if (result == ISC_R_QUEUEFULL) {
		entropy = FUNC6(ent, sq);
		FUNC4(ent, entropy);
	}

	FUNC2(&ent->lock);

	return (result);
}