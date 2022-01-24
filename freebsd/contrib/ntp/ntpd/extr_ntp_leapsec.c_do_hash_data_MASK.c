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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  isc_sha1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static void
FUNC2(
	isc_sha1_t * mdctx,
	char const * cp   )
{
	unsigned char  text[32]; // must be power of two!
	unsigned int   tlen =  0;
	unsigned char  ch;

	while ('\0' != (ch = *cp++) && '#' != ch)
		if (FUNC1(ch)) {
			text[tlen++] = ch;
			tlen &= (sizeof(text)-1);
			if (0 == tlen)
				FUNC0(
					mdctx, text, sizeof(text));
		}

	if (0 < tlen)
		FUNC0(mdctx, text, tlen);
}