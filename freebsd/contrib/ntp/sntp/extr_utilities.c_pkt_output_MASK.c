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
typedef  int u_char ;
struct pkt {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* HLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void 
FUNC1 (
		struct pkt *dpkg,
		int pkt_length, 
		FILE *output
	   )
{
	register int a;
	u_char *pkt;

	pkt = (u_char *)dpkg;

	FUNC0(output, HLINE);

	for (a = 0; a < pkt_length; a++) {
		if (a > 0 && a % 8 == 0)
			FUNC0(output, "\n");

		FUNC0(output, "%3d: %02x  ", a, pkt[a]);
	}

	FUNC0(output, "\n");
	FUNC0(output, HLINE);
}