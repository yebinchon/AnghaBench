#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int _capacity; int _position; int _limit; int /*<<< orphan*/  _status; int /*<<< orphan*/  _fixed; } ;
typedef  TYPE_1__ ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 

bool
FUNC3(ldns_buffer *buffer, size_t amount)
{
	FUNC1(buffer);
	FUNC0(!buffer->_fixed);
	if (buffer->_capacity < buffer->_position + amount) {
		size_t new_capacity = buffer->_capacity * 3 / 2;

		if (new_capacity < buffer->_position + amount) {
			new_capacity = buffer->_position + amount;
		}
		if (!FUNC2(buffer, new_capacity)) {
			buffer->_status = LDNS_STATUS_MEM_ERR;
			return false;
		}
	}
	buffer->_limit = buffer->_capacity;
	return true;
}