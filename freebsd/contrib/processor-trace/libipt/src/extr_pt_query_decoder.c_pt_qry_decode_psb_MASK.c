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
typedef  int /*<<< orphan*/  const uint8_t ;
struct pt_query_decoder {int /*<<< orphan*/ * next; int /*<<< orphan*/  evq; int /*<<< orphan*/  const* pos; int /*<<< orphan*/  config; int /*<<< orphan*/  tcal; } ;

/* Variables and functions */
 int /*<<< orphan*/  evb_psbend ; 
 int /*<<< orphan*/  pt_decode_psb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_query_decoder*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

int FUNC4(struct pt_query_decoder *decoder)
{
	const uint8_t *pos;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	pos = decoder->pos;

	size = FUNC1(pos, &decoder->config);
	if (size < 0)
		return size;

	errcode = FUNC3(&decoder->tcal, &decoder->config);
	if (errcode < 0)
		return errcode;

	decoder->pos += size;

	errcode = FUNC2(decoder);
	if (errcode < 0) {
		/* Move back to the PSB so we have a chance to recover and
		 * continue decoding.
		 */
		decoder->pos = pos;

		/* Clear any PSB+ events that have already been queued. */
		(void) FUNC0(&decoder->evq, evb_psbend);

		/* Reset the decoder's decode function. */
		decoder->next = &pt_decode_psb;

		return errcode;
	}

	/* The next packet following the PSB header will be of type PSBEND.
	 *
	 * Decoding this packet will publish the PSB events what have been
	 * accumulated while reading the PSB header.
	 */
	return 0;
}