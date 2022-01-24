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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t _position; int _status_err; size_t _limit; size_t _capacity; void* _data; int /*<<< orphan*/  _fixed; } ;
typedef  TYPE_1__ sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(sldns_buffer *buffer, size_t capacity)
{
	void *data;
	
	FUNC2(buffer);
	FUNC0(buffer->_position <= capacity && !buffer->_fixed);

	data = (uint8_t *) FUNC1(buffer->_data, capacity);
	if (!data) {
		buffer->_status_err = 1;
		return 0;
	} else {
		buffer->_data = data;
		buffer->_limit = buffer->_capacity = capacity;
		return 1;
	}
}