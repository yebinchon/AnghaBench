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
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (char*) ; 
 int FUNC2 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *str, size_t size, const char *fmt, va_list ap)
{
	size_t len;

	len = FUNC1(str);
	FUNC0(len < size);
	return (FUNC2(str + len, size - len, fmt, ap));
}