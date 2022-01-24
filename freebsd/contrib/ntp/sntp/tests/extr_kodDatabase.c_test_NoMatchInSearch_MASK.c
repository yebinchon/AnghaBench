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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct kod_entry**) ; 

void
FUNC4(void) {
	const char HOST_ADD[] = "192.0.2.6";
	const char HOST_NOTADD[] = "192.0.6.1";
	const char REASON[] = "DENY";

	FUNC2(HOST_ADD, REASON);

	struct kod_entry* result;

	FUNC0(0, FUNC3(HOST_NOTADD, &result));
	FUNC1(result == NULL);
}