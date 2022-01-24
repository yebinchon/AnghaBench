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
 int FUNC0 (int**,int*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(u_char **startpp, u_char *endp) {
        int c, n;
        int seendigit = 0;
        int m = 0;

	if (*startpp + 2 >= endp || FUNC4((char *)*startpp, "0x", 2) != 0)
		return FUNC0(startpp, endp);
	(*startpp)+=2;
        for (n = 0; *startpp <= endp; ) {
                c = **startpp;
                if (FUNC2(c) || c == '\0') {
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
                if (!FUNC3(c)) {
                        if (c == ')' && seendigit) {
                                (*startpp)--;
                                break;
                        }
			return (-1);
                }        
                (*startpp)++;
		if (FUNC1(c))
	                n = n * 16 + (c - '0');
		else
			n = n * 16 + (FUNC5(c) - 'a' + 10);
                seendigit = 1;
        }
        return (n + m);
}