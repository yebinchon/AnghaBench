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
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 size_t* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 

uint8_t
FUNC3(const ldns_rdf *r)
{
        uint16_t src_pos;
        uint16_t len;
        uint8_t i;
        size_t r_size;

	if (!r) {
		return 0;
	}

	i = 0;
	src_pos = 0;
	r_size = FUNC2(r);

	if (FUNC1(r) != LDNS_RDF_TYPE_DNAME) {
		return 0;
	} else {
		len = FUNC0(r)[src_pos]; /* start of the label */

		/* single root label */
		if (1 == r_size) {
			return 0;
		} else {
			while ((len > 0) && src_pos < r_size) {
				src_pos++;
				src_pos += len;
				len = FUNC0(r)[src_pos];
				i++;
			}
		}
	}
	return i;
}