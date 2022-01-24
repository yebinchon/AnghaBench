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
struct pt_query_decoder {int /*<<< orphan*/  tnt; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*) ; 
 int FUNC1 (struct pt_query_decoder*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int pte_invalid ; 

int FUNC4(struct pt_query_decoder *decoder, int *taken)
{
	int errcode, query;

	if (!decoder || !taken)
		return -pte_invalid;

	/* We cache the latest tnt packet in the decoder. Let's re-fill the
	 * cache in case it is empty.
	 */
	if (FUNC2(&decoder->tnt)) {
		errcode = FUNC0(decoder);
		if (errcode < 0)
			return errcode;
	}

	query = FUNC3(&decoder->tnt);
	if (query < 0)
		return query;

	*taken = query;

	return FUNC1(decoder);
}