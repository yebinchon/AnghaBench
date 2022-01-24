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
 char* BSDCPIO_VERSION_STRING ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC2(stdout,"bsdcpio %s - %s \n",
	    BSDCPIO_VERSION_STRING,
	    FUNC0());
	FUNC1(0);
}