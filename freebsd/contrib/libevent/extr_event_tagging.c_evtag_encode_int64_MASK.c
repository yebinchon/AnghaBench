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
typedef  int /*<<< orphan*/  ev_uint8_t ;
typedef  int /*<<< orphan*/  ev_uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct evbuffer *evbuf, ev_uint64_t number)
{
	ev_uint8_t data[9];
	int len = FUNC0(data, number);
	FUNC1(evbuf, data, len);
}