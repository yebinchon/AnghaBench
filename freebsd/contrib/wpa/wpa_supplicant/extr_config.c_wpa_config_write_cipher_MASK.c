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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,int,char*) ; 

__attribute__((used)) static char * FUNC3(int cipher)
{
#ifdef CONFIG_NO_WPA
	return NULL;
#else /* CONFIG_NO_WPA */
	char *buf = FUNC1(50);
	if (buf == NULL)
		return NULL;

	if (FUNC2(buf, buf + 50, cipher, " ") < 0) {
		FUNC0(buf);
		return NULL;
	}

	return buf;
#endif /* CONFIG_NO_WPA */
}