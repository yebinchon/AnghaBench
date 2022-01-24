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
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* HLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 

void 
FUNC2 (
		l_fp *ts,
		FILE *output
		)
{
	register int a, b;

	FUNC0(output, HLINE);

	for(a=0; a<8; a++) {
		short tmp = ((unsigned char *) ts)[a];
		tmp++;

		FUNC0(output, "%i: ", a);

		for(b=7; b>=0; b--) {
			int texp = (int) FUNC1(2, b);

			if(tmp - texp > 0) {
				FUNC0(output, "1");
				tmp -= texp;
			}
			else {
				FUNC0(output, "0");
			}
		}

		FUNC0(output, " ");
	}

	FUNC0(output, "\n");
	FUNC0(output, HLINE);
}