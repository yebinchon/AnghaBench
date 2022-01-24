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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2 (int leftalign, unsigned long numerator, unsigned long divider)
{
	int n;

	if (numerator < 1 || divider < 1) {
		FUNC0 (leftalign ? "/-   " : "    -");
		return;
	}
	n = (int) (0.5 + 1000.0 * numerator / divider);
	if (n < 1000) {
		FUNC0 (leftalign ? "/.%-3d" : " .%03d", n);
		return;
	}
	FUNC1 (leftalign ? '/' : ' ');

	if      (n >= 1000000) n = (n+500) / 1000 * 1000;
	else if (n >= 100000)  n = (n+50)  / 100 * 100;
	else if (n >= 10000)   n = (n+5)   / 10 * 10;

	switch (n) {
	case 1000:    FUNC0 (".999"); return;
	case 10000:   n = 9990;   break;
	case 100000:  n = 99900;  break;
	case 1000000: n = 999000; break;
	}
	if (n < 10000)        FUNC0 ("%d.%d", n/1000, n/10%100);
	else if (n < 100000)  FUNC0 ("%d.%d", n/1000, n/100%10);
	else if (n < 1000000) FUNC0 ("%d.", n/1000);
	else                  FUNC0 ("%d", n/1000);
}