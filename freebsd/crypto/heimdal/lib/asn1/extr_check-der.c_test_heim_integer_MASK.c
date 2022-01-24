#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tests ;
struct test_case {int member_1; char* member_2; int /*<<< orphan*/ * name; TYPE_1__* val; int /*<<< orphan*/ * member_0; } ;
struct TYPE_4__ {int member_0; char* member_1; int member_2; scalar_t__ length; } ;
typedef  TYPE_1__ heim_integer ;
typedef  int /*<<< orphan*/  generic_length ;
typedef  int /*<<< orphan*/  generic_free ;
typedef  int /*<<< orphan*/  generic_encode ;
typedef  int /*<<< orphan*/  generic_decode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,size_t*) ; 
 scalar_t__ der_length_heim_integer ; 
 scalar_t__ der_put_heim_integer ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct test_case*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_cmp_heim_integer ; 

__attribute__((used)) static int
FUNC6 (void)
{
    struct test_case tests[] = {
	{NULL, 2, "\xfe\x01"},
	{NULL, 2, "\xef\x01"},
	{NULL, 3, "\xff\x00\xff"},
	{NULL, 3, "\xff\x01\x00"},
	{NULL, 1, "\x00"},
	{NULL, 1, "\x01"},
	{NULL, 2, "\x00\x80"}
    };

    heim_integer values[] = {
	{ 2, "\x01\xff", 1 },
	{ 2, "\x10\xff", 1 },
	{ 2, "\xff\x01", 1 },
	{ 2, "\xff\x00", 1 },
	{ 0, "", 0 },
	{ 1, "\x01", 0 },
	{ 1, "\x80", 0 }
    };
    int i, ret;
    int ntests = sizeof(tests) / sizeof(tests[0]);
    size_t size;
    heim_integer i2;

    for (i = 0; i < ntests; ++i) {
	tests[i].val = &values[i];
	if (FUNC0 (&tests[i].name, "heim_integer %d", i) < 0)
	    FUNC3(1, "malloc");
	if (tests[i].name == NULL)
	    FUNC3(1, "malloc");
    }

    ret = FUNC5 (tests, ntests, sizeof(heim_integer),
			(generic_encode)der_put_heim_integer,
			(generic_length)der_length_heim_integer,
			(generic_decode)der_get_heim_integer,
			(generic_free)der_free_heim_integer,
			test_cmp_heim_integer,
			NULL);
    for (i = 0; i < ntests; ++i)
	FUNC4 (tests[i].name);
    if (ret)
	return ret;

    /* test zero length integer (BER format) */
    ret = FUNC2(NULL, 0, &i2, &size);
    if (ret)
	FUNC3(1, "der_get_heim_integer");
    if (i2.length != 0)
	FUNC3(1, "der_get_heim_integer wrong length");
    FUNC1(&i2);

    return 0;
}