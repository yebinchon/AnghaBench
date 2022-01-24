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
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int verbosity ; 

__attribute__((used)) static void
FUNC4(RES* ssl, char* str)
{
	int val = FUNC0(str);
	if(val == 0 && FUNC3(str, "0") != 0) {
		FUNC2(ssl, "error in verbosity number syntax: %s\n", str);
		return;
	}
	verbosity = val;
	FUNC1(ssl);
}