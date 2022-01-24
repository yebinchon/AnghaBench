#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int timestamp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_DIR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__** kod_db ; 
 int /*<<< orphan*/  kod_db_file ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void) {
	kod_db_file = FUNC7("kod-output-multiple");
	FUNC6("example.com", "RATE");
	FUNC6("192.0.2.1", "DENY");
	FUNC6("192.0.2.5", "RSTR");

	//
	// Manipulate timestamps. This is a bit of a hack, ideally these
	// tests should not care about the internal representation.
	//
	kod_db[0]->timestamp = 0xabcd;
	kod_db[1]->timestamp = 0xabcd;
	kod_db[2]->timestamp = 0xabcd;

	FUNC9();

	// Open file and compare sizes and content.
	FILE * actual = FUNC8(kod_db_file, "rb");
	FILE * expected = FUNC8(FUNC1("kod-expected-multiple", INPUT_DIR),"rb");

	FUNC4(actual);
	FUNC4(expected);


	FUNC3(FUNC2(expected), FUNC2(actual));

	FUNC5(FUNC0(expected, actual));
}