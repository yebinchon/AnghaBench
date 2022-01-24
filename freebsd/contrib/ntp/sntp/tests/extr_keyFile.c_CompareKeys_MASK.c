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
struct key {scalar_t__ key_id; scalar_t__ key_len; char* typen; int /*<<< orphan*/  key_seq; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

bool
FUNC3(
	struct key	expected,
	struct key	actual
	)
{
	if (expected.key_id != actual.key_id) {
		FUNC1("Expected key_id: %d but was: %d\n",
		       expected.key_id, actual.key_id);
		return FALSE;
	}
	if (expected.key_len != actual.key_len) {
		FUNC1("Expected key_len: %d but was: %d\n",
		       expected.key_len, actual.key_len);
		return FALSE;
	}
	if (FUNC2(expected.typen, actual.typen) != 0) {
		FUNC1("Expected key_type: %s but was: %s\n",
		       expected.typen, actual.typen);
		return FALSE;

	}
	if (FUNC0(expected.key_seq, actual.key_seq, expected.key_len) != 0) {
		FUNC1("Key mismatch!\n");
		return FALSE;		
	}
	return TRUE;
}