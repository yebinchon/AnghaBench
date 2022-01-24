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
typedef  int time_t ;
typedef  int /*<<< orphan*/  tests ;
struct test_case {int member_1; char* member_2; int* val; int /*<<< orphan*/ * name; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  generic_length ;
typedef  int /*<<< orphan*/  generic_free ;
typedef  int /*<<< orphan*/  generic_encode ;
typedef  int /*<<< orphan*/  generic_decode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  cmp_generalized_time ; 
 scalar_t__ der_get_generalized_time ; 
 scalar_t__ der_length_generalized_time ; 
 scalar_t__ der_put_generalized_time ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct test_case*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (void)
{
    struct test_case tests[] = {
	{NULL, 15, "19700101000000Z"},
	{NULL, 15, "19851106210627Z"}
    };
    time_t values[] = {0, 500159187};
    int i, ret;
    int ntests = sizeof(tests) / sizeof(*tests);

    for (i = 0; i < ntests; ++i) {
	tests[i].val = &values[i];
	if (FUNC0 (&tests[i].name, "time %d", (int)values[i]) < 0)
	    FUNC1(1, "malloc");
	if (tests[i].name == NULL)
	    FUNC1(1, "malloc");
    }

    ret = FUNC3 (tests, ntests, sizeof(time_t),
			(generic_encode)der_put_generalized_time,
			(generic_length)der_length_generalized_time,
			(generic_decode)der_get_generalized_time,
			(generic_free)NULL,
			cmp_generalized_time,
			NULL);
    for (i = 0; i < ntests; ++i)
	FUNC2(tests[i].name);
    return ret;
}