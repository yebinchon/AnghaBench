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
struct dbputchar_arg {char* da_pbufr; char* da_pnext; int da_remain; int da_nbufr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int c, void *arg)
{
	struct dbputchar_arg *dap = arg;

	if (dap->da_pbufr == NULL) {

		 /* No bufferized output is provided. */
		FUNC0(c);
	} else {

		*dap->da_pnext++ = c;
		dap->da_remain--;

		/* Leave always the buffer 0 terminated. */
		*dap->da_pnext = '\0';

		/* Check if the buffer needs to be flushed. */
		if (dap->da_remain < 2 || c == '\n') {
			FUNC1(dap->da_pbufr);
			dap->da_pnext = dap->da_pbufr;
			dap->da_remain = dap->da_nbufr;
			*dap->da_pnext = '\0';
		}
	}
}