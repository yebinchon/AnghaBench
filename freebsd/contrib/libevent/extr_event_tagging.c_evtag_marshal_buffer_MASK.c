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
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,struct evbuffer*) ; 
 scalar_t__ FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct evbuffer *evbuf, ev_uint32_t tag,
    struct evbuffer *data)
{
	FUNC3(evbuf, tag);
	/* XXX support more than UINT32_MAX data */
	FUNC2(evbuf, (ev_uint32_t)FUNC1(data));
	FUNC0(evbuf, data);
}