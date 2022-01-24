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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(u_char **startpp, u_char *endp) {
        int c, n;
        int seendigit = 0;
        int m = 0;

        for (n = 0; *startpp <= endp; ) {
                c = **startpp;
                if (FUNC1(c) || c == '\0') {
                        if (seendigit) /*%< trailing whitespace */
                                break;
                        else { /*%< leading whitespace */
                                (*startpp)++;
                                continue;
                        }
                }
                if (c == ';') {
                        while ((*startpp <= endp) &&
			       ((c = **startpp) != '\n'))
					(*startpp)++;
                        if (seendigit)
                                break;
                        continue;
                }
                if (!FUNC0(c)) {
                        if (c == ')' && seendigit) {
                                (*startpp)--;
                                break;
                        }
			return (-1);
                }        
                (*startpp)++;
                n = n * 10 + (c - '0');
                seendigit = 1;
        }
        return (n + m);
}