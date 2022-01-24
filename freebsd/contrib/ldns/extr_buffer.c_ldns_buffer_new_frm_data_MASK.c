#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t _limit; size_t _capacity; int /*<<< orphan*/  _status; int /*<<< orphan*/  _data; scalar_t__ _fixed; scalar_t__ _position; } ;
typedef  TYPE_1__ ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  uint8_t ; 

void
FUNC4(ldns_buffer *buffer, const void *data, size_t size)
{
	FUNC1(data != NULL);

	buffer->_position = 0; 
	buffer->_limit = buffer->_capacity = size;
	buffer->_fixed = 0;
	buffer->_data = FUNC0(uint8_t, size);
	if(!buffer->_data) {
		buffer->_status = LDNS_STATUS_MEM_ERR;
		return;
	}
	FUNC3(buffer->_data, data, size);
	buffer->_status = LDNS_STATUS_OK;
	
	FUNC2(buffer);
}