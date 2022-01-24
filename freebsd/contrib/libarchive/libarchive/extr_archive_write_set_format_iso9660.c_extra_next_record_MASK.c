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
struct ctl_extr_rec {int cur_len; int use_extr; unsigned char* bp; unsigned char* ce_ptr; int /*<<< orphan*/  limit; int /*<<< orphan*/  isoent; int /*<<< orphan*/  extr_loc; int /*<<< orphan*/  extr_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  RR_CE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_extr_rec*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ctl_extr_rec*) ; 

__attribute__((used)) static unsigned char *
FUNC3(struct ctl_extr_rec *ctl, int length)
{
	int cur_len = ctl->cur_len;/* save cur_len */

	/* Close the current extra record or Directory Record. */
	FUNC0(ctl, RR_CE_SIZE);

	/* Get a next extra record. */
	ctl->use_extr = 1;
	if (ctl->bp != NULL) {
		/* Storing data into an extra record. */
		unsigned char *p;

		/* Save the pointer where a CE extension will be
		 * stored to. */
		ctl->ce_ptr = &ctl->bp[cur_len+1];
		p = FUNC1(ctl->isoent,
		    &ctl->limit, &ctl->extr_off, &ctl->extr_loc);
		ctl->bp = p - 1;/* the base of bp offset is 1. */
	} else
		/* Calculating the size of an extra record. */
		(void)FUNC1(ctl->isoent,
		    &ctl->limit, NULL, NULL);
	ctl->cur_len = 0;
	/* Check if an extra record is almost full.
	 * If so, get a next one. */
	if (FUNC2(ctl) < length)
		(void)FUNC3(ctl, length);

	return (ctl->bp);
}