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
 int /*<<< orphan*/  FUNC0 (unsigned char const,int) ; 
 int FUNC1 (unsigned char const*,unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(netdissect_options *ndo,
         const unsigned char *s, const unsigned char *maxbuf)
{
    const unsigned char *s0 = s;
    unsigned char c;

    if (s >= maxbuf)
	return(-1);	/* name goes past the end of the buffer */
    FUNC0(*s, 1);
    c = *s;
    if ((c & 0xC0) == 0xC0)
	return(2);
    while (*s) {
	if (s >= maxbuf)
	    return(-1);	/* name goes past the end of the buffer */
	FUNC0(*s, 1);
	s += (*s) + 1;
	FUNC0(*s, 1);
    }
    return(FUNC1(s, s0) + 1);

trunc:
    return(-1);	/* name goes past the end of the buffer */
}