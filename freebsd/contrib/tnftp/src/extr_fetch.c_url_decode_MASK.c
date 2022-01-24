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
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static void
FUNC3(char *url)
{
	unsigned char *p, *q;

	if (FUNC0(url))
		return;
	p = q = (unsigned char *)url;

#define	HEXTOINT(x) (x - (isdigit(x) ? '0' : (islower(x) ? 'a' : 'A') - 10))
	while (*p) {
		if (p[0] == '%'
		    && p[1] && FUNC2((unsigned char)p[1])
		    && p[2] && FUNC2((unsigned char)p[2])) {
			*q++ = HEXTOINT(p[1]) * 16 + HEXTOINT(p[2]);
			p+=3;
		} else
			*q++ = *p++;
	}
	*q = '\0';
}