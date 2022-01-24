#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ data_buffer_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const,TYPE_1__ const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const) ; 
 TYPE_1__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(char const* actual_file, char const* expected_file) {
    data_buffer_t const actual = FUNC2(actual_file);
    data_buffer_t const expected = FUNC2(expected_file);
    int ret = 1;

    if (actual.data == NULL) {
        FUNC3(stderr, "failed to open results '%s' for diff\n", actual_file);
        goto out;
    }
    if (expected.data == NULL) {
        FUNC3(
            stderr,
            "failed to open previous results '%s' for diff\n",
            expected_file);
        goto out;
    }

    ret = FUNC0(actual, expected);
    if (ret != 0) {
        FUNC3(
            stderr,
            "actual results '%s' does not match expected results '%s'\n",
            actual_file,
            expected_file);
    } else {
        FUNC3(stderr, "actual results match expected results\n");
    }
out:
    FUNC1(actual);
    FUNC1(expected);
    return ret;
}