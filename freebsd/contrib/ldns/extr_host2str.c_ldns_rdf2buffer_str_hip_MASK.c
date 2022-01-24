#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_9__ {int _position; } ;
typedef  TYPE_1__ ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_WIRE_RDATA_ERR ; 
 int FUNC0 (scalar_t__*,size_t,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 size_t FUNC10 (scalar_t__*) ; 

ldns_status
FUNC11(ldns_buffer *output, const ldns_rdf *rdf)
{
	uint8_t *data = FUNC8(rdf);
	size_t rdf_size = FUNC9(rdf);
	uint8_t hit_size;
	uint16_t pk_size;
	int written;
	
	if (rdf_size < 6) {
		return LDNS_STATUS_WIRE_RDATA_ERR;
	}
	if ((hit_size = data[0]) == 0 ||
			(pk_size = FUNC10(data + 2)) == 0 ||
			rdf_size < (size_t) hit_size + pk_size + 4) {

		return LDNS_STATUS_WIRE_RDATA_ERR;
	}

	FUNC3(output, "%d ", (int) data[1]);

	for (data += 4; hit_size > 0; hit_size--, data++) {

		FUNC3(output, "%02x", (int) *data);
	}
	FUNC7(output, (uint8_t) ' ');

	if (FUNC5(output,
				FUNC1(pk_size))) {

		written = FUNC0(data, pk_size,
				(char *) FUNC2(output),
				FUNC4(output));

		if (written > 0 &&
				written < (int) FUNC4(output)) {

			output->_position += written;
		}
	}
	return FUNC6(output);
}