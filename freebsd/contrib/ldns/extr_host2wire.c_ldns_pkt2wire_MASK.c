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
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

ldns_status
FUNC5(uint8_t **dest, const ldns_pkt *packet, size_t *result_size)
{
	ldns_buffer *buffer = FUNC2(LDNS_MAX_PACKETLEN);
	ldns_status status;
	*result_size = 0;
	*dest = NULL;
	if(!buffer) return LDNS_STATUS_MEM_ERR;
	
	status = FUNC4(buffer, packet);
	if (status == LDNS_STATUS_OK) {
		*result_size =  FUNC3(buffer);
		*dest = (uint8_t *) FUNC0(buffer);
	}
	FUNC1(buffer);
	return status;
}