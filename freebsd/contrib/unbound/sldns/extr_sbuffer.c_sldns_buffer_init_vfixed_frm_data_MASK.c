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
struct TYPE_4__ {size_t _capacity; size_t _limit; int _fixed; int _vfixed; void* _data; } ;
typedef  TYPE_1__ sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC1(sldns_buffer *buffer, void *data, size_t size)
{
	FUNC0(buffer, 0, sizeof(*buffer));
	buffer->_data = data;
	buffer->_capacity = buffer->_limit = size;
	buffer->_fixed = 1;
	buffer->_vfixed = 1;
}