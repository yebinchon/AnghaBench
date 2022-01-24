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
struct pt_query_decoder {struct pt_decoder_function* next; int /*<<< orphan*/  config; int /*<<< orphan*/  pos; int /*<<< orphan*/  ip; } ;
struct pt_decoder_function {int flags; int (* header ) (struct pt_query_decoder*) ;} ;

/* Variables and functions */
 int pdff_psbend ; 
 int FUNC0 (struct pt_decoder_function**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int pte_bad_context ; 
 int pte_internal ; 
 int FUNC2 (struct pt_query_decoder*) ; 

__attribute__((used)) static int FUNC3(struct pt_query_decoder *decoder)
{
	if (!decoder)
		return -pte_internal;

	FUNC1(&decoder->ip);

	for (;;) {
		const struct pt_decoder_function *dfun;
		int errcode;

		errcode = FUNC0(&decoder->next, decoder->pos,
				      &decoder->config);
		if (errcode)
			return errcode;

		dfun = decoder->next;
		if (!dfun)
			return -pte_internal;

		/* We're done once we reach an psbend packet. */
		if (dfun->flags & pdff_psbend)
			return 0;

		if (!dfun->header)
			return -pte_bad_context;

		errcode = dfun->header(decoder);
		if (errcode)
			return errcode;
	}
}