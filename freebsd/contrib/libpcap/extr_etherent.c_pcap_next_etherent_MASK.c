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
typedef  int u_char ;
struct pcap_etherent {int* addr; char* name; } ;
typedef  int /*<<< orphan*/  e ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 

struct pcap_etherent *
FUNC7(FILE *fp)
{
	register int c, i;
	u_char d;
	char *bp;
	size_t namesize;
	static struct pcap_etherent e;

	FUNC3((char *)&e, 0, sizeof(e));
	for (;;) {
		/* Find addr */
		c = FUNC5(fp);
		if (c == EOF)
			return (NULL);
		if (c == '\n')
			continue;

		/* If this is a comment, or first thing on line
		   cannot be Ethernet address, skip the line. */
		if (!FUNC2(c)) {
			c = FUNC4(fp);
			if (c == EOF)
				return (NULL);
			continue;
		}

		/* must be the start of an address */
		for (i = 0; i < 6; i += 1) {
			d = FUNC6((u_char)c);
			c = FUNC0(fp);
			if (c == EOF)
				return (NULL);
			if (FUNC2(c)) {
				d <<= 4;
				d |= FUNC6((u_char)c);
				c = FUNC0(fp);
				if (c == EOF)
					return (NULL);
			}
			e.addr[i] = d;
			if (c != ':')
				break;
			c = FUNC0(fp);
			if (c == EOF)
				return (NULL);
		}

		/* Must be whitespace */
		if (!FUNC1(c)) {
			c = FUNC4(fp);
			if (c == EOF)
				return (NULL);
			continue;
		}
		c = FUNC5(fp);
		if (c == EOF)
			return (NULL);

		/* hit end of line... */
		if (c == '\n')
			continue;

		if (c == '#') {
			c = FUNC4(fp);
			if (c == EOF)
				return (NULL);
			continue;
		}

		/* pick up name */
		bp = e.name;
		/* Use 'namesize' to prevent buffer overflow. */
		namesize = sizeof(e.name) - 1;
		do {
			*bp++ = (u_char)c;
			c = FUNC0(fp);
			if (c == EOF)
				return (NULL);
		} while (!FUNC1(c) && --namesize != 0);
		*bp = '\0';

		/* Eat trailing junk */
		if (c != '\n')
			(void)FUNC4(fp);

		return &e;
	}
}