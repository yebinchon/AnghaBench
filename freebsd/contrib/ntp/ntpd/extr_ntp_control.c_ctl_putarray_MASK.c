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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NTP_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t) ; 
 int FUNC2 (char*,size_t,char*,double) ; 

__attribute__((used)) static void
FUNC3(
	const char *tag,
	double *arr,
	int start
	)
{
	char *cp, *ep;
	char buffer[200];
	int  i, rc;

	cp = buffer;
	ep = buffer + sizeof(buffer);
	i  = start;
	do {
		if (i == 0)
			i = NTP_SHIFT;
		i--;
		rc = FUNC2(cp, (size_t)(ep - cp), " %.2f", arr[i] * 1e3);
		FUNC0(rc >= 0 && (size_t)rc < (size_t)(ep - cp));
		cp += rc;
	} while (i != start);
	FUNC1(tag, buffer, (size_t)(cp - buffer));
}