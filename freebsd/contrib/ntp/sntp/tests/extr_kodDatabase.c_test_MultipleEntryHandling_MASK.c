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
struct kod_entry {int /*<<< orphan*/  type; int /*<<< orphan*/  hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct kod_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct kod_entry**) ; 

void
FUNC5(void) {
	const char HOST1[] = "192.0.2.3";
	const char REASON1[] = "DENY";

	const char HOST2[] = "192.0.5.5";
	const char REASON2[] = "RATE";

	const char HOST3[] = "192.0.10.1";
	const char REASON3[] = "DENY";

	FUNC2(HOST1, REASON1);
	FUNC2(HOST2, REASON2);
	FUNC2(HOST3, REASON3);

	struct kod_entry* result;

	FUNC0(1, FUNC4(HOST1, &result));
	FUNC1(HOST1, result->hostname);
	FUNC1(REASON1, result->type);

	FUNC0(1, FUNC4(HOST2, &result));
	FUNC1(HOST2, result->hostname);
	FUNC1(REASON2, result->type);

	FUNC0(1, FUNC4(HOST3, &result));
	FUNC1(HOST3, result->hostname);
	FUNC1(REASON3, result->type);

	FUNC3(result);
}