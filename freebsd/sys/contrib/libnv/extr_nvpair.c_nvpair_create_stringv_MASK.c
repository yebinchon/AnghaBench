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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 

nvpair_t *
FUNC3(const char *name, const char *valuefmt, va_list valueap)
{
	nvpair_t *nvp;
	char *str;
	int len;

	len = FUNC1(&str, valuefmt, valueap);
	if (len < 0)
		return (NULL);
	nvp = FUNC2(name, str);
	FUNC0(str);
	return (nvp);
}