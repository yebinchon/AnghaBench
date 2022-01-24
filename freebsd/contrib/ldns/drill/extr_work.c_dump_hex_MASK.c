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
typedef  scalar_t__ uint8_t ;
typedef  char const* ldns_status ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 char const* LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (scalar_t__**,int /*<<< orphan*/  const*,size_t*) ; 

void
FUNC6(const ldns_pkt *pkt, const char *filename)
{
	uint8_t *wire = NULL;
	size_t size, i;
	FILE *fp;
	ldns_status status;
	
	fp = FUNC3(filename, "w");
	
	if (fp == NULL) {
		FUNC1("Unable to open %s for writing", filename);
		return;
	}
	
	status = FUNC5(&wire, pkt, &size);
	
	if (status != LDNS_STATUS_OK) {
		FUNC1("Unable to convert packet: error code %u", status);
		FUNC0(wire);
		FUNC2(fp);
		return;
	}
	
	FUNC4(fp, "; 0");
	for (i = 1; i < 20; i++) {
		FUNC4(fp, " %2u", (unsigned int) i);
	}
	FUNC4(fp, "\n");
	FUNC4(fp, ";--");
	for (i = 1; i < 20; i++) {
		FUNC4(fp, " --");
	}
	FUNC4(fp, "\n");
	for (i = 0; i < size; i++) {
		if (i % 20 == 0 && i > 0) {
			FUNC4(fp, "\t;\t%4u-%4u\n", (unsigned int) i-19, (unsigned int) i);
		}
		FUNC4(fp, " %02x", (unsigned int)wire[i]);
	}
	FUNC4(fp, "\n");
	FUNC2(fp);
	FUNC0(wire);
}