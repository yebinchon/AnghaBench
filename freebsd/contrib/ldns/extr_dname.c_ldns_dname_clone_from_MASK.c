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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,size_t*) ; 
 size_t* FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 

ldns_rdf *
FUNC5(const ldns_rdf *d, uint16_t n)
{
	uint8_t *data;
	uint8_t label_size;
	size_t data_size;

	if (!d ||
	    FUNC3(d) != LDNS_RDF_TYPE_DNAME ||
	    FUNC0(d) < n) {
		return NULL;
	}

	data = FUNC2(d);
	data_size = FUNC4(d);
	while (n > 0) {
		label_size = data[0] + 1;
		data += label_size;
		if (data_size < label_size) {
			/* this label is very broken */
			return NULL;
		}
		data_size -= label_size;
		n--;
	}

	return FUNC1(data_size, data);
}