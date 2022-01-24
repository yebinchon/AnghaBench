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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t* FUNC3 (int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC5(ldns_buffer *output, const ldns_rdf *rdf)
{
	size_t nchars;
	const uint8_t* chars;
	char ch;
	if (FUNC4(rdf) < 2) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	nchars = FUNC3(rdf)[0];
	if (nchars >= FUNC4(rdf) || /* should be rdf_size - 1 */
			nchars < 1) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	chars = FUNC3(rdf) + 1;
	while (nchars > 0) {
		ch = (char)*chars++;
		if (! FUNC0((unsigned char)ch)) {
			return LDNS_STATUS_WIRE_RDATA_ERR;
		}
		FUNC1(output, "%c", ch);
		nchars--;
	}
	return FUNC2(output);
}