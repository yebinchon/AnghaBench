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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_isdst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*) ; 
 char* FUNC1 (char*,char*,struct tm*) ; 

time_t
FUNC2(char *str)
{
	struct tm then;

	str = FUNC1(str, "%a %b %e %T %Y", &then);
	if (str == NULL || (*str != '\n' && *str != '\0'))
		return ((time_t)-1);
	then.tm_isdst = -1;
	return (FUNC0(&then));
}