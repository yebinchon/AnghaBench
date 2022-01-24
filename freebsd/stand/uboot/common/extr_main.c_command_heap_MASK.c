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
 int CMD_OK ; 
 scalar_t__ end ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int argc, char *argv[])
{

	FUNC0("heap base at %p, top at %p, used %td\n", end, FUNC1(0),
	    FUNC1(0) - end);

	return (CMD_OK);
}