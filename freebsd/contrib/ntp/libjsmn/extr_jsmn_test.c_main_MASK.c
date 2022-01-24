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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  test_array_nomem ; 
 int /*<<< orphan*/  test_count ; 
 int /*<<< orphan*/  test_empty ; 
 int test_failed ; 
 int /*<<< orphan*/  test_input_length ; 
 int /*<<< orphan*/  test_issue_22 ; 
 int /*<<< orphan*/  test_keyvalue ; 
 int /*<<< orphan*/  test_nonstrict ; 
 int /*<<< orphan*/  test_objects_arrays ; 
 int /*<<< orphan*/  test_partial_array ; 
 int /*<<< orphan*/  test_partial_string ; 
 int test_passed ; 
 int /*<<< orphan*/  test_primitive ; 
 int /*<<< orphan*/  test_simple ; 
 int /*<<< orphan*/  test_string ; 
 int /*<<< orphan*/  test_unicode_characters ; 
 int /*<<< orphan*/  test_unquoted_keys ; 

int FUNC2() {
	FUNC1(test_empty, "general test for a empty JSON objects/arrays");
	FUNC1(test_simple, "general test for a simple JSON string");
	FUNC1(test_primitive, "test primitive JSON data types");
	FUNC1(test_string, "test string JSON data types");
	FUNC1(test_partial_string, "test partial JSON string parsing");
	FUNC1(test_partial_array, "test partial array reading");
	FUNC1(test_array_nomem, "test array reading with a smaller number of tokens");
	FUNC1(test_unquoted_keys, "test unquoted keys (like in JavaScript)");
	FUNC1(test_objects_arrays, "test objects and arrays");
	FUNC1(test_unicode_characters, "test unicode characters");
	FUNC1(test_input_length, "test strings that are not null-terminated");
	FUNC1(test_issue_22, "test issue #22");
	FUNC1(test_count, "test tokens count estimation");
	FUNC1(test_nonstrict, "test for non-strict mode");
	FUNC1(test_keyvalue, "test for keys/values");
	FUNC0("\nPASSED: %d\nFAILED: %d\n", test_passed, test_failed);
	return 0;
}