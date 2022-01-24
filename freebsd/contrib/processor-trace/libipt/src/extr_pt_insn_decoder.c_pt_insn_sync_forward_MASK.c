#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_insn_decoder {int /*<<< orphan*/  ip; int /*<<< orphan*/  query; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_insn_decoder*) ; 
 int FUNC1 (struct pt_insn_decoder*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_invalid ; 

int FUNC3(struct pt_insn_decoder *decoder)
{
	int status;

	if (!decoder)
		return -pte_invalid;

	FUNC0(decoder);

	status = FUNC2(&decoder->query, &decoder->ip);

	return FUNC1(decoder, status);
}