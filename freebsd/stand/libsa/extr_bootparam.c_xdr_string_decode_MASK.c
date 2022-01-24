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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(char **pkt, char *str, int *len_p)
{
	uint32_t *lenp;
	char *datap;
	int slen;	/* string length */
	int plen;	/* padded length */

	/* The data will be int aligned. */
	lenp = (uint32_t *) *pkt;
	*pkt += sizeof(*lenp);
	slen = FUNC1(*lenp);
	plen = (slen + 3) & ~3;

	if (slen > *len_p)
		slen = *len_p;
	datap = *pkt;
	*pkt += plen;
	FUNC0(datap, str, slen);

	str[slen] = '\0';
	*len_p = slen;

	return (0);
}