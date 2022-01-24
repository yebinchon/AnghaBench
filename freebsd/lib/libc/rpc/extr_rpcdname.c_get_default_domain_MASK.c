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
typedef  int /*<<< orphan*/  temp ;

/* Variables and functions */
 char* default_domain ; 
 scalar_t__ FUNC0 (char*,int) ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 unsigned int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(void)
{
	char temp[256];

	if (default_domain != NULL)
		return (default_domain);
	if (FUNC0(temp, sizeof(temp)) < 0)
		return (0);
	if ((int) FUNC3(temp) > 0) {
		default_domain = FUNC1((FUNC3(temp) + (unsigned)1));
		if (default_domain == NULL)
			return (0);
		(void) FUNC2(default_domain, temp);
		return (default_domain);
	}
	return (0);
}