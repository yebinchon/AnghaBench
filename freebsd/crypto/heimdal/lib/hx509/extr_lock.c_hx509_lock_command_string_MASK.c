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
typedef  int /*<<< orphan*/  hx509_lock ;

/* Variables and functions */
 int HX509_UNKNOWN_LOCK_COMMAND ; 
 int /*<<< orphan*/  default_prompter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

int
FUNC4(hx509_lock lock, const char *string)
{
    if (FUNC3(string, "PASS:", 5) == 0) {
	FUNC0(lock, string + 5);
    } else if (FUNC2(string, "PROMPT") == 0) {
	FUNC1(lock, default_prompter, NULL);
    } else
	return HX509_UNKNOWN_LOCK_COMMAND;
    return 0;
}