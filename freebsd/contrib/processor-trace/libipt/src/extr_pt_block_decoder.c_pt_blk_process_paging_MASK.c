#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ cr3; } ;
struct TYPE_5__ {TYPE_1__ paging; } ;
struct pt_event {TYPE_2__ variant; } ;
struct TYPE_6__ {scalar_t__ cr3; } ;
struct pt_block_decoder {scalar_t__ process_event; TYPE_3__ asid; int /*<<< orphan*/  scache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC1(struct pt_block_decoder *decoder,
				 const struct pt_event *ev)
{
	uint64_t cr3;
	int errcode;

	if (!decoder || !ev)
		return -pte_internal;

	cr3 = ev->variant.paging.cr3;
	if (decoder->asid.cr3 != cr3) {
		errcode = FUNC0(&decoder->scache);
		if (errcode < 0)
			return errcode;

		decoder->asid.cr3 = cr3;
	}

	decoder->process_event = 0;

	return 0;
}