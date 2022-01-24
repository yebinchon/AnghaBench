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
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__*,struct evbuffer*,int) ; 
 scalar_t__ FUNC1 (struct evbuffer*) ; 
 int FUNC2 (scalar_t__*,struct evbuffer*) ; 

int
FUNC3(struct evbuffer *evbuf, ev_uint32_t *ptag)
{
	ev_uint32_t len;

	if (FUNC0(ptag, evbuf, 1 /* dodrain */) == -1)
		return (-1);
	if (FUNC2(&len, evbuf) == -1)
		return (-1);

	if (FUNC1(evbuf) < len)
		return (-1);

	return (len);
}