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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static wchar_t *
FUNC4(const char *s)
{
	size_t len;
	wchar_t *ws = NULL;

	if (s != NULL) {
		len = FUNC3(s) + 1;
		ws = FUNC1(len * sizeof(wchar_t));
		FUNC0(FUNC2(ws, s, len) != (size_t)-1);
	}

	return (ws);
}