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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef  TYPE_1__ ldns_lookup_table ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ldns_cert_algorithms ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

ldns_status
FUNC5(ldns_buffer *output, const ldns_rdf *rdf)
{
        uint16_t data = FUNC4(FUNC3(rdf));
	ldns_lookup_table *lt;
 	lt = FUNC2(ldns_cert_algorithms, (int) data);
	if (lt) {
		FUNC0(output, "%s", lt->name);
	} else {
		FUNC0(output, "%d", data);
	}
	return FUNC1(output);
}