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
typedef  scalar_t__ u_int ;
typedef  char u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 char FUNC3 (char) ; 
 char FUNC4 (char) ; 

u_int
FUNC5(const char *ascii, u_char *binary, int maxlen) {
	u_char c, nib;
	u_int len = 0;

	if (ascii[0] != '0' || (ascii[1] != 'x' && ascii[1] != 'X'))
		return (0);
	ascii += 2;

	while ((c = *ascii++) != '\0' && len < (u_int)maxlen) {
		if (c == '.' || c == '+' || c == '/')
			continue;
		if (!FUNC0(c))
			return (0);
		if (FUNC1(c))
			c = FUNC3(c);
		if (FUNC2(c)) {
			nib = FUNC4(c);
			c = *ascii++;
			if (c != '\0') {
				c = FUNC3(c);
				if (FUNC2(c)) {
					*binary++ = (nib << 4) | FUNC4(c);
					len++;
				} else
					return (0);
			}
			else
				return (0);
		}
		else
			return (0);
	}
	return (len);
}