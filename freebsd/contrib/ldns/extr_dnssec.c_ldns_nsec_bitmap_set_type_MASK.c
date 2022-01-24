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
typedef  int ldns_status ;
typedef  int ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_BITMAP ; 
 int LDNS_STATUS_OK ; 
 int LDNS_STATUS_TYPE_NOT_IN_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC4(ldns_rdf* bitmap, ldns_rr_type type)
{
	uint8_t* dptr;
	uint8_t* dend;

	/* From RFC3845 Section 2.1.2:
	 *
	 *	"The RR type space is split into 256 window blocks, each re-
	 *	 presenting the low-order 8 bits of the 16-bit RR type space."
	 */
	uint8_t  window = type >> 8;
	uint8_t subtype = type & 0xff;

	if (! bitmap) {
		return false;
	}
	FUNC0(FUNC2(bitmap) == LDNS_RDF_TYPE_BITMAP);

	dptr = FUNC1(bitmap);
	dend = FUNC1(bitmap) + FUNC3(bitmap);

	/* Type Bitmap = ( Window Block # | Bitmap Length | Bitmap ) +
	 *                 dptr[0]          dptr[1]         dptr[2:]
	 */
	while (dptr < dend && dptr[0] <= window) {

		if (dptr[0] == window && subtype / 8 < dptr[1] &&
				dptr + dptr[1] + 2 <= dend) {

			dptr[2 + subtype / 8] |= (0x80 >> (subtype % 8));
			return LDNS_STATUS_OK;
		}
		dptr += dptr[1] + 2; /* next window */
	}
	return LDNS_STATUS_TYPE_NOT_IN_BITMAP;
}