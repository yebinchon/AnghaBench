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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC5(ldns_buffer *output, const ldns_rdf *rdf)
{
        if(FUNC4(rdf) < 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
        if((int)FUNC4(rdf) < (int)FUNC3(rdf)[0] + 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
	FUNC0(output, "\"");
	FUNC2(output, 
			FUNC3(rdf)[0], FUNC3(rdf) + 1);
	FUNC0(output, "\"");
	return FUNC1(output);
}