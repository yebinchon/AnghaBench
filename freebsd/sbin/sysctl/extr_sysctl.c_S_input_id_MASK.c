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
struct input_id {int bustype; int vendor; int product; int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int) ; 

__attribute__((used)) static int
FUNC2(size_t l2, void *p)
{
	struct input_id *id = p;

	if (l2 != sizeof(*id)) {
		FUNC1("S_input_id %zu != %zu", l2, sizeof(*id));
		return (1);
	}

	FUNC0("{ bustype = 0x%04x, vendor = 0x%04x, "
	    "product = 0x%04x, version = 0x%04x }",
	    id->bustype, id->vendor, id->product, id->version);
	return (0);
}