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

/* Variables and functions */
 int FUNC0 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(char *str, size_t size, const char *format, va_list args)
{
	int r;
	if (size == 0)
		return -1;
#ifdef WIN32
	r = _vsnprintf(str, size, format, args);
#else
	r = FUNC1(str, size, format, args);
#endif
	str[size-1] = '\0';
	if (r < 0 || ((size_t)r) >= size) {
		/* different platforms behave differently on overflow;
		 * handle both kinds. */
		return -1;
	}
	return r;
}