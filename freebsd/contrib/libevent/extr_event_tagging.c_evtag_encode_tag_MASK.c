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
struct evbuffer {int dummy; } ;
typedef  int ev_uint8_t ;
typedef  int ev_uint32_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct evbuffer *evbuf, ev_uint32_t tag)
{
	int bytes = 0;
	ev_uint8_t data[5];

	FUNC1(data, 0, sizeof(data));
	do {
		ev_uint8_t lower = tag & 0x7f;
		tag >>= 7;

		if (tag)
			lower |= 0x80;

		data[bytes++] = lower;
	} while (tag);

	if (evbuf != NULL)
		FUNC0(evbuf, data, bytes);

	return (bytes);
}