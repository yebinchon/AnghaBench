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
struct tv32 {int dummy; } ;

/* Variables and functions */
 int F_QUIET ; 
 int MAXDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int options ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,char*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static void
FUNC4(char *bp, char *patp)
{
	int ii, jj, kk;
	int pat[16];
	char *cp;

	for (cp = patp; *cp; cp++)
		if (!FUNC1(*cp))
			FUNC0(1, "patterns must be specified as hex digits");
	ii = FUNC3(patp,
	    "%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x%2x",
	    &pat[0], &pat[1], &pat[2], &pat[3], &pat[4], &pat[5], &pat[6],
	    &pat[7], &pat[8], &pat[9], &pat[10], &pat[11], &pat[12],
	    &pat[13], &pat[14], &pat[15]);

/* xxx */
	if (ii > 0)
		for (kk = 0;
		    (size_t)kk <= MAXDATALEN - 8 + sizeof(struct tv32) + ii;
		    kk += ii)
			for (jj = 0; jj < ii; ++jj)
				bp[jj + kk] = pat[jj];
	if (!(options & F_QUIET)) {
		(void)FUNC2("PATTERN: 0x");
		for (jj = 0; jj < ii; ++jj)
			(void)FUNC2("%02x", bp[jj] & 0xFF);
		(void)FUNC2("\n");
	}
}