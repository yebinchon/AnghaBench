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
typedef  void* u_char ;

/* Variables and functions */
 scalar_t__ digits ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(char *buf, int size, u_char **startpp, u_char *endp) {
        char *cp;
        int c, c1 = 0;
	int inquote = 0;
	int seen_quote = 0;
	int escape = 0;
	int dig = 0;
 
	for (cp = buf; *startpp <= endp; ) {
                if ((c = **startpp) == '\0')
			break;
		/* leading white space */
		if ((cp == buf) && !seen_quote && FUNC0(c)) {
			(*startpp)++;
			continue;
		}

		switch (c) {
		case '\\':
			if (!escape)  {
				escape = 1;
				dig = 0;
				c1 = 0;
				(*startpp)++;
				continue;
			} 
			goto do_escape;
		case '"':
			if (!escape) {
				inquote = !inquote;
				seen_quote = 1;
				(*startpp)++;
				continue;
			}
			/* fall through */
		default:
		do_escape:
			if (escape) {
				switch (c) {
				case '0':
				case '1':
				case '2':
				case '3':
				case '4':
				case '5':
				case '6':
				case '7':
				case '8':
				case '9':
					c1 = c1 * 10 + 
						(FUNC1(digits, c) - digits);

					if (++dig == 3) {
						c = c1 &0xff;
						break;
					}
					(*startpp)++;
					continue;
				}
				escape = 0;
			} else if (!inquote && FUNC0(c))
				goto done;
			if (cp >= buf+size-1)
				goto done;
			*cp++ = (u_char)c;
			(*startpp)++;
		}
	}
 done:
	*cp = '\0';
	return ((cp == buf)?  (seen_quote? 0: -1): (cp - buf));
}