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
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 char* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 

char *
FUNC2(int sock)
{
	char *p;

	if ((p = FUNC0(sock, 1, NI_NUMERICHOST)) != NULL)
		return p;
	return FUNC1("UNKNOWN");
}