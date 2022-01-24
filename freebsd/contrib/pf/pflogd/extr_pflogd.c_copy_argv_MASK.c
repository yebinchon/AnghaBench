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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char* const,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char* const,size_t) ; 
 scalar_t__ FUNC3 (char* const) ; 

char *
FUNC4(char * const *argv)
{
	size_t len = 0, n;
	char *buf;

	if (argv == NULL)
		return (NULL);

	for (n = 0; argv[n]; n++)
		len += FUNC3(argv[n])+1;
	if (len == 0)
		return (NULL);

	buf = FUNC0(len);
	if (buf == NULL)
		return (NULL);

	FUNC2(buf, argv[0], len);
	for (n = 1; argv[n]; n++) {
		FUNC1(buf, " ", len);
		FUNC1(buf, argv[n], len);
	}
	return (buf);
}