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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC2(void)
{
	const char *s = FUNC0("SOCKET_WRAPPER_DIR");
	if (s == NULL) {
		return NULL;
	}
	if (FUNC1(s, "./", 2) == 0) {
		s += 2;
	}
	return s;
}