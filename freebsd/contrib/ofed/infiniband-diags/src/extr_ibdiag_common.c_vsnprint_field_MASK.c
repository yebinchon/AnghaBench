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
typedef  enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

int FUNC4(char *buf, size_t n, enum MAD_FIELDS f, int spacing,
		   const char *format, va_list va_args)
{
	int len, i, ret;

	len = FUNC1(FUNC0(f));
	if (len + 2 > n || spacing + 1 > n)
		return 0;

	FUNC2(buf, FUNC0(f), n);
	buf[len] = ':';
	for (i = len+1; i < spacing+1; i++) {
		buf[i] = '.';
	}

	ret = FUNC3(&buf[spacing+1], n - spacing, format, va_args);
	if (ret >= n - spacing)
		buf[n] = '\0';

	return ret + spacing;
}