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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
struct TYPE_3__ {int /*<<< orphan*/  const name; } ;
typedef  TYPE_1__ ldns_lookup_table ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  ldns_rr_classes ; 

ldns_status
FUNC3(ldns_buffer *output,
                         const ldns_rr_class klass)
{
	ldns_lookup_table *lt;

	lt = FUNC2(ldns_rr_classes, klass);
	if (lt) {
		FUNC0(output, "%s", lt->name);
	} else {
		FUNC0(output, "CLASS%d", klass);
	}
	return FUNC1(output);
}