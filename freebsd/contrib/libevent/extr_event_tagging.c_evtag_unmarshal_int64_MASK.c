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
typedef  int /*<<< orphan*/  ev_uint64_t ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct evbuffer*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__*,struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 int FUNC4 (scalar_t__*,struct evbuffer*) ; 

int
FUNC5(struct evbuffer *evbuf, ev_uint32_t need_tag,
    ev_uint64_t *pinteger)
{
	ev_uint32_t tag;
	ev_uint32_t len;
	int result;

	if (FUNC1(&tag, evbuf, 1 /* dodrain */) == -1)
		return (-1);
	if (need_tag != tag)
		return (-1);
	if (FUNC4(&len, evbuf) == -1)
		return (-1);

	if (FUNC3(evbuf) < len)
		return (-1);

	result = FUNC0(pinteger, evbuf, 0);
	FUNC2(evbuf, len);
	if (result < 0 || (size_t)result > len) /* XXX Should this be != rather than > ?*/
		return (-1);
	else
		return result;
}