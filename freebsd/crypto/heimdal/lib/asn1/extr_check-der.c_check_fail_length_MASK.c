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
typedef  int /*<<< orphan*/  tests ;
struct test_case {int member_1; char* member_2; char* member_3; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  generic_decode ;

/* Variables and functions */
 scalar_t__ der_get_length ; 
 int FUNC0 (struct test_case*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void)
{
    struct test_case tests[] = {
	{NULL, 0, "", "empty input data"},
	{NULL, 1, "\x82", "internal length overrun" }
    };
    int ntests = sizeof(tests) / sizeof(*tests);

    return FUNC0(tests, ntests, sizeof(size_t),
			       (generic_decode)der_get_length);
}