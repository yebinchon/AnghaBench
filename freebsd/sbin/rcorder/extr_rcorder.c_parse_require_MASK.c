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
typedef  int /*<<< orphan*/  filenode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char**,char*) ; 

__attribute__((used)) static void
FUNC2(filenode *node, char *buffer)
{
	char *s;
	
	while ((s = FUNC1(&buffer, " \t\n")) != NULL)
		if (*s != '\0')
			FUNC0(node, s);
}