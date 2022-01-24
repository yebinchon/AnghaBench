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
typedef  size_t u_int ;
struct hostkeys {size_t num_entries; struct hostkeys* entries; int /*<<< orphan*/  key; struct hostkeys* file; struct hostkeys* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostkeys*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hostkeys*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct hostkeys *hostkeys)
{
	u_int i;

	for (i = 0; i < hostkeys->num_entries; i++) {
		FUNC1(hostkeys->entries[i].host);
		FUNC1(hostkeys->entries[i].file);
		FUNC2(hostkeys->entries[i].key);
		FUNC0(hostkeys->entries + i, sizeof(*hostkeys->entries));
	}
	FUNC1(hostkeys->entries);
	FUNC0(hostkeys, sizeof(*hostkeys));
	FUNC1(hostkeys);
}