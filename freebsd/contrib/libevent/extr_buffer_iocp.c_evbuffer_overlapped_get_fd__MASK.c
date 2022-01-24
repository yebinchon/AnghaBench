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
struct evbuffer_overlapped {int fd; } ;
struct evbuffer {int dummy; } ;
typedef  int evutil_socket_t ;

/* Variables and functions */
 struct evbuffer_overlapped* FUNC0 (struct evbuffer*) ; 

evutil_socket_t
FUNC1(struct evbuffer *buf)
{
	struct evbuffer_overlapped *buf_o = FUNC0(buf);
	return buf_o ? buf_o->fd : -1;
}