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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC2(netdissect_options *ndo, const u_char *bp, u_int length)
{

	if (FUNC1(ndo, "MSG", 4, (const char *)bp, length)) /* A REQuest */
		FUNC0((ndo, " BEEP MSG"));
	else if (FUNC1(ndo, "RPY ", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP RPY"));
	else if (FUNC1(ndo, "ERR ", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP ERR"));
	else if (FUNC1(ndo, "ANS ", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP ANS"));
	else if (FUNC1(ndo, "NUL ", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP NUL"));
	else if (FUNC1(ndo, "SEQ ", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP SEQ"));
	else if (FUNC1(ndo, "END", 4, (const char *)bp, length))
		FUNC0((ndo, " BEEP END"));
	else
		FUNC0((ndo, " BEEP (payload or undecoded)"));
}