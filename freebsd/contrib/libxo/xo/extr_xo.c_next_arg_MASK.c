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
 char** save_argv ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static char *
FUNC1 (void)
{
    char *cp = *save_argv;

    if (cp == NULL)
	FUNC0(1, "missing argument");

    save_argv += 1;
    return cp;
}