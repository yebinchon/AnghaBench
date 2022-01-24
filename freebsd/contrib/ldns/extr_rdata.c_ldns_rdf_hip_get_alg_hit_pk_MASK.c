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
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_HIP ; 
 int /*<<< orphan*/  LDNS_STATUS_INVALID_POINTER ; 
 int /*<<< orphan*/  LDNS_STATUS_INVALID_RDF_TYPE ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int*) ; 

ldns_status
FUNC4(ldns_rdf *rdf, uint8_t* alg,
                            uint8_t *hit_size, uint8_t** hit,
                            uint16_t *pk_size, uint8_t** pk)
{
	uint8_t *data;
	size_t rdf_size;

	if (! rdf || ! alg || ! hit || ! hit_size || ! pk || ! pk_size) {
		return LDNS_STATUS_INVALID_POINTER;
	} else if (FUNC1(rdf) != LDNS_RDF_TYPE_HIP) {
		return LDNS_STATUS_INVALID_RDF_TYPE;
	} else if ((rdf_size = FUNC2(rdf)) < 6) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	data = FUNC0(rdf);
	*hit_size = data[0];
	*alg      = data[1];
	*pk_size  = FUNC3(data + 2);
	*hit      = data + 4;
	*pk       = data + 4 + *hit_size;
	if (*hit_size == 0 || *pk_size == 0 ||
			rdf_size < (size_t) *hit_size + *pk_size + 4) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	return LDNS_STATUS_OK;
}