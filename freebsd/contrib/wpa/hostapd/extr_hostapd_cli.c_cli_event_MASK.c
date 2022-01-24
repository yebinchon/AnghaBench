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
 int /*<<< orphan*/  AP_STA_CONNECTED ; 
 int /*<<< orphan*/  AP_STA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  stations ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *str)
{
	const char *start, *s;

	start = FUNC2(str, '>');
	if (start == NULL)
		return;

	start++;

	if (FUNC3(start, AP_STA_CONNECTED)) {
		s = FUNC2(start, ' ');
		if (s == NULL)
			return;
		FUNC0(&stations, s + 1);
		return;
	}

	if (FUNC3(start, AP_STA_DISCONNECTED)) {
		s = FUNC2(start, ' ');
		if (s == NULL)
			return;
		FUNC1(&stations, s + 1);
		return;
	}
}