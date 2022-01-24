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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

ldns_status
FUNC5(ldns_buffer *output, const ldns_rdf *rdf)
{
	if (FUNC3(rdf) != 8) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	FUNC0(output,"%.4x:%.4x:%.4x:%.4x",
				FUNC4(FUNC2(rdf)),
				FUNC4(FUNC2(rdf)+2),
				FUNC4(FUNC2(rdf)+4),
				FUNC4(FUNC2(rdf)+6));
	return FUNC1(output);
}