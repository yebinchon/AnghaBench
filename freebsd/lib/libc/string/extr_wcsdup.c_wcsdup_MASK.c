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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

wchar_t *
FUNC3(const wchar_t *s)
{
	wchar_t *copy;
	size_t len;

	len = FUNC1(s) + 1;
	if ((copy = FUNC0(len * sizeof(wchar_t))) == NULL)
		return (NULL);
	return (FUNC2(copy, s, len));
}