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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

ldns_pkt *
FUNC6(char *filename)
{
	uint8_t *wire;
	size_t wiresize;
	
	ldns_pkt *pkt = NULL;
	
	ldns_status status = LDNS_STATUS_ERR;

	wire = FUNC5(LDNS_MAX_PACKETLEN);
	
	wiresize = FUNC3(filename, wire);
	
	if (wiresize > 0) {
		status = FUNC2(&pkt, wire, wiresize);
	}
	
	FUNC4(wire);
	
	if (status == LDNS_STATUS_OK) {
		return pkt;
	} else {
		FUNC0(stderr, "Error parsing hex file: %s\n",
			   FUNC1(status));
		return NULL;
	}
}