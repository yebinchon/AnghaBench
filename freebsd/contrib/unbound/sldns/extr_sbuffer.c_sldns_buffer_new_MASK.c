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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {size_t _limit; size_t _capacity; scalar_t__ _status_err; scalar_t__ _vfixed; scalar_t__ _fixed; scalar_t__ _position; int /*<<< orphan*/ * _data; } ;
typedef  TYPE_1__ sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

sldns_buffer *
FUNC3(size_t capacity)
{
	sldns_buffer *buffer = (sldns_buffer*)FUNC1(sizeof(sldns_buffer));

	if (!buffer) {
		return NULL;
	}
	
	buffer->_data = (uint8_t *) FUNC1(capacity);
	if (!buffer->_data) {
		FUNC0(buffer);
		return NULL;
	}
	
	buffer->_position = 0;
	buffer->_limit = buffer->_capacity = capacity;
	buffer->_fixed = 0;
	buffer->_vfixed = 0;
	buffer->_status_err = 0;
	
	FUNC2(buffer);
	
	return buffer;
}