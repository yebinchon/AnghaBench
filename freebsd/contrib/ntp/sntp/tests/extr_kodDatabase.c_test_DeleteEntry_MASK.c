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
struct kod_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct kod_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct kod_entry**) ; 

void
FUNC5(void) {
	const char HOST1[] = "192.0.2.1";
	const char HOST2[] = "192.0.2.2";
	const char HOST3[] = "192.0.2.3";
	const char REASON[] = "DENY";

	FUNC1(HOST1, REASON);
	FUNC1(HOST2, REASON);
	FUNC1(HOST3, REASON);

	struct kod_entry* result;
	
	FUNC0(1, FUNC4(HOST2, &result));
	FUNC3(result);

	FUNC2(HOST2, REASON);

	FUNC0(0, FUNC4(HOST2, &result));

	// Ensure that the other entry is still there.
	FUNC0(1, FUNC4(HOST1, &result));
	FUNC3(result);
}