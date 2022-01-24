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
 long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 long FUNC1 (char const*,char**,int) ; 
 int FUNC2 (unsigned char) ; 

int
FUNC3(const char *arg)
{
	char *cp;
	long val;

	if (!FUNC0((unsigned char)arg[0]))
		return (-1);

	val = FUNC1(arg, &cp, 10);
	if (cp != NULL) {
		if (cp[0] != '\0' && cp[1] != '\0')
			 return (-1);
		switch (FUNC2((unsigned char)cp[0])) {
		case '\0':
		case 'b':
			break;
		case 'k':
			val <<= 10;
			break;
		case 'm':
			val <<= 20;
			break;
		case 'g':
			val <<= 30;
			break;
		default:
			return (-1);
		}
	}
	if (val < 0 || val > INT_MAX)
		return (-1);

	return (val);
}