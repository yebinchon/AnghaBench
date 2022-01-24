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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int LDNS_APL_IP4 ; 
 int LDNS_APL_IP6 ; 
 int LDNS_APL_MASK ; 
 int LDNS_APL_NEGATION ; 
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int*) ; 

ldns_status
FUNC5(ldns_buffer *output, const ldns_rdf *rdf)
{
	uint8_t *data = FUNC2(rdf);
	uint16_t address_family;
	uint8_t prefix;
	bool negation;
	uint8_t adf_length;
	size_t i;
	size_t pos = 0;

	while (pos < (unsigned int) FUNC3(rdf)) {
                if(pos + 3 >= (unsigned)FUNC3(rdf))
                        return LDNS_STATUS_WIRE_RDATA_ERR;
		address_family = FUNC4(&data[pos]);
		prefix = data[pos + 2];
		negation = data[pos + 3] & LDNS_APL_NEGATION;
		adf_length = data[pos + 3] & LDNS_APL_MASK;
		if (address_family == LDNS_APL_IP4) {
			/* check if prefix < 32? */
			if (negation) {
				FUNC0(output, "!");
			}
			FUNC0(output, "%u:", address_family);
			/* address is variable length 0 - 4 */
			for (i = 0; i < 4; i++) {
				if (i > 0) {
					FUNC0(output, ".");
				}
				if (i < (unsigned short) adf_length) {
                                        if(pos+i+4 >= FUNC3(rdf))
					    return LDNS_STATUS_WIRE_RDATA_ERR;
					FUNC0(output, "%d",
					                   data[pos + i + 4]);
				} else {
					FUNC0(output, "0");
				}
			}
			FUNC0(output, "/%u ", prefix);
		} else if (address_family == LDNS_APL_IP6) {
			/* check if prefix < 128? */
			if (negation) {
				FUNC0(output, "!");
			}
			FUNC0(output, "%u:", address_family);
			/* address is variable length 0 - 16 */
			for (i = 0; i < 16; i++) {
				if (i % 2 == 0 && i > 0) {
					FUNC0(output, ":");
				}
				if (i < (unsigned short) adf_length) {
                                        if(pos+i+4 >= FUNC3(rdf))
					    return LDNS_STATUS_WIRE_RDATA_ERR;
					FUNC0(output, "%02x",
					                   data[pos + i + 4]);
				} else {
					FUNC0(output, "00");
				}
			}
			FUNC0(output, "/%u ", prefix);

		} else {
			/* unknown address family */
			FUNC0(output,
					"Unknown address family: %u data: ",
					address_family);
			for (i = 1; i < (unsigned short) (4 + adf_length); i++) {
                                if(pos+i >= FUNC3(rdf))
                                        return LDNS_STATUS_WIRE_RDATA_ERR;
				FUNC0(output, "%02x", data[i]);
			}
		}
		pos += 4 + adf_length;
	}
	return FUNC1(output);
}