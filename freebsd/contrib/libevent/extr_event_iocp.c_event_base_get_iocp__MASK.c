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
struct event_iocp_port {int dummy; } ;
struct event_base {struct event_iocp_port* iocp; } ;

/* Variables and functions */

struct event_iocp_port *
FUNC0(struct event_base *base)
{
#ifdef _WIN32
	return base->iocp;
#else
	return NULL;
#endif
}