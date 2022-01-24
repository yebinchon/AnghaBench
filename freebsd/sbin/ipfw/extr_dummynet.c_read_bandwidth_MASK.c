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

/* Variables and functions */
 int EX_DATAERR ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char *arg, int *bandwidth, char *if_name, int namelen)
{
	if (*bandwidth != -1)
		FUNC5("duplicate token, override bandwidth value!");

	if (arg[0] >= 'a' && arg[0] <= 'z') {
		if (!if_name) {
			FUNC1(1, "no if support");
		}
		if (namelen >= IFNAMSIZ)
			FUNC4("interface name truncated");
		namelen--;
		/* interface name */
		FUNC2(if_name, arg, namelen);
		*bandwidth = 0;
	} else {	/* read bandwidth value */
		int bw;
		char *end = NULL;

		bw = FUNC3(arg, &end, 0);
		if (*end == 'K' || *end == 'k') {
			end++;
			bw *= 1000;
		} else if (*end == 'M' || *end == 'm') {
			end++;
			bw *= 1000000;
		} else if (*end == 'G' || *end == 'g') {
			end++;
			bw *= 1000000000;
		}
		if ((*end == 'B' &&
			FUNC0(end, "Bi", "Bit/s") != 0) ||
		    FUNC0(end, "by", "bytes") == 0)
			bw *= 8;

		if (bw < 0)
			FUNC1(EX_DATAERR, "bandwidth too large");

		*bandwidth = bw;
		if (if_name)
			if_name[0] = '\0';
	}
}