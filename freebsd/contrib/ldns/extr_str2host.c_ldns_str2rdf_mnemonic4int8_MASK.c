#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_5__ {scalar_t__ id; } ;
typedef  TYPE_1__ ldns_lookup_table ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT8 ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 TYPE_1__* FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*) ; 

__attribute__((used)) static ldns_status
FUNC3(ldns_lookup_table *lt,
		ldns_rdf **rd, const char *str)
{
	if ((lt = FUNC0(lt, str))) {
		/* it was given as a integer */
		*rd = FUNC1(LDNS_RDF_TYPE_INT8, (uint8_t) lt->id);
		if (!*rd)
			return LDNS_STATUS_ERR;
		else
			return LDNS_STATUS_OK;
	}
	return FUNC2(rd, str);
}