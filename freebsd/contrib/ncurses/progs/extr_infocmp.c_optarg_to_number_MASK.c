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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void)
{
    char *temp = 0;
    long value = FUNC2(optarg, &temp, 0);

    if (temp == 0 || temp == optarg || *temp != 0) {
	FUNC1(stderr, "Expected a number, not \"%s\"\n", optarg);
	FUNC0(EXIT_FAILURE);
    }
    return (int) value;
}