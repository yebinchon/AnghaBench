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
struct TYPE_4__ {scalar_t__ enable_tick_events; } ;
struct TYPE_5__ {TYPE_1__ insn; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_insn_decoder {int /*<<< orphan*/  ip; TYPE_3__ flags; int /*<<< orphan*/  query; } ;

/* Variables and functions */
 int FUNC0 (struct pt_insn_decoder*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC2(struct pt_insn_decoder *decoder, int *taken)
{
	int status, errcode;

	if (!decoder)
		return -pte_internal;

	status = FUNC1(&decoder->query, taken);
	if (status < 0)
		return status;

	if (decoder->flags.variant.insn.enable_tick_events) {
		errcode = FUNC0(decoder, decoder->ip);
		if (errcode < 0)
			return errcode;
	}

	return status;
}