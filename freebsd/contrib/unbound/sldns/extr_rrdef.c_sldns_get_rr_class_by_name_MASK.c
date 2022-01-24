#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sldns_rr_class ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ sldns_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  sldns_rr_classes ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

sldns_rr_class
FUNC4(const char *name)
{
	sldns_lookup_table *lt;

	/* CLASSXX representation */
	if (FUNC2(name) > 5 && FUNC3(name, "CLASS", 5) == 0) {
		return FUNC0(name + 5);
	}

	/* Normal types */
	lt = FUNC1(sldns_rr_classes, name);
	if (lt) {
		return lt->id;
	}
	return 0;
}