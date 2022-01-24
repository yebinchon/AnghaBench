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
struct pt_block_decoder {int status; int /*<<< orphan*/  enabled; } ;
struct pt_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_block_decoder*) ; 
 int FUNC1 (struct pt_block_decoder*,struct pt_block*) ; 
 int FUNC2 (struct pt_block_decoder*,struct pt_block*) ; 
 int FUNC3 (struct pt_block_decoder*,struct pt_block*) ; 
 int pte_eos ; 
 int pte_no_enable ; 
 int pts_eos ; 

__attribute__((used)) static int FUNC4(struct pt_block_decoder *decoder,
			  struct pt_block *block)
{
	int status;

	status = FUNC0(decoder);
	if (status != 0) {
		if (status < 0)
			return status;

		return FUNC1(decoder, block);
	}

	/* If tracing is disabled we should either be out of trace or we should
	 * have taken the event flow above.
	 */
	if (!decoder->enabled) {
		if (decoder->status & pts_eos)
			return -pte_eos;

		return -pte_no_enable;
	}

	status = FUNC2(decoder, block);
	if (status < 0)
		return status;

	return FUNC3(decoder, block);
}