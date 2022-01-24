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
struct kod_entry {scalar_t__ timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct kod_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct kod_entry**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(void) {
	const char HOST[] = "192.0.2.3";
	const char REASON1[] = "RATE";
	const char REASON2[] = "DENY";

	FUNC2(HOST, REASON1);
	struct kod_entry* result1;
	FUNC0(1, FUNC4(HOST, &result1));

	/* 
	 * Sleeps for two seconds since we want to ensure that
	 * the timestamp is updated to a new value.
	 */
	FUNC5(2);

	FUNC2(HOST, REASON2);
	struct kod_entry* result2;
	FUNC0(1, FUNC4(HOST, &result2));

	FUNC1(result1->timestamp == result2->timestamp);

	FUNC3(result1);
	FUNC3(result2);
}