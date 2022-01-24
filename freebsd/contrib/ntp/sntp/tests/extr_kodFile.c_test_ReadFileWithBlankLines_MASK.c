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
struct kod_entry {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  hostname; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_DIR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  kod_db_cnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct kod_entry**) ; 

void
FUNC5(void) {
	FUNC3(FUNC0("kod-test-blanks", INPUT_DIR), TRUE);

	FUNC1(3, kod_db_cnt);

	struct kod_entry* res;

	FUNC1(1, FUNC4("192.0.2.5", &res));
	FUNC2("DENY", res->type);
	FUNC2("192.0.2.5", res->hostname);
	FUNC1(0x12345678, res->timestamp);

	FUNC1(1, FUNC4("192.0.2.100", &res));
	FUNC2("RSTR", res->type);
	FUNC2("192.0.2.100", res->hostname);
	FUNC1(0xfff, res->timestamp);

	FUNC1(1, FUNC4("example.com", &res));
	FUNC2("DENY", res->type);
	FUNC2("example.com", res->hostname);
	FUNC1(0xabcd, res->timestamp);
}