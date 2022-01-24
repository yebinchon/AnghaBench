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
struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 struct evhttp_bound_socket* FUNC0 (struct evhttp*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct evhttp *http, const char *address, ev_uint16_t port)
{
	struct evhttp_bound_socket *bound =
		FUNC0(http, address, port);
	if (bound == NULL)
		return (-1);
	return (0);
}