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
 char* FUNC0 (unsigned long) ; 
 char* FUNC1 (char*) ; 

char *
FUNC2(const void *val_, unsigned long len)
{
	const unsigned char *val = val_;
	char *result, *cp;
	size_t i;

	if (!val)
		return FUNC1("null");
	if (!(result = FUNC0(len*2+1)))
		return FUNC1("<allocation failure>");
	cp = result;
	for (i=0;i<len;++i) {
		*cp++ = "0123456789ABCDEF"[val[i] >> 4];
		*cp++ = "0123456789ABCDEF"[val[i] & 0x0f];
	}
	*cp = 0;
	return result;
}