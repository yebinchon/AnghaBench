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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

void
FUNC4(netdissect_options *ndo, const unsigned char *buf, int len)
{
    int i = 0;

    if (len <= 0)
	return;
    FUNC0((ndo, "[%03X] ", i));
    for (i = 0; i < len; /*nothing*/) {
        FUNC1(buf[i]);
	FUNC0((ndo, "%02X ", buf[i] & 0xff));
	i++;
	if (i%8 == 0)
	    FUNC0((ndo, " "));
	if (i % 16 == 0) {
	    FUNC3(ndo, &buf[i - 16], 8);
	    FUNC0((ndo, " "));
	    FUNC3(ndo, &buf[i - 8], 8);
	    FUNC0((ndo, "\n"));
	    if (i < len)
		FUNC0((ndo, "[%03X] ", i));
	}
    }
    if (i % 16) {
	int n;

	n = 16 - (i % 16);
	FUNC0((ndo, " "));
	if (n>8)
	    FUNC0((ndo, " "));
	while (n--)
	    FUNC0((ndo, "   "));

	n = FUNC2(8, i % 16);
	FUNC3(ndo, &buf[i - (i % 16)], n);
	FUNC0((ndo, " "));
	n = (i % 16) - n;
	if (n > 0)
	    FUNC3(ndo, &buf[i - n], n);
	FUNC0((ndo, "\n"));
    }
    return;

trunc:
    FUNC0((ndo, "\n"));
    FUNC0((ndo, "WARNING: Short packet. Try increasing the snap length\n"));
}