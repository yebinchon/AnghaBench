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
struct evhttp_connection {scalar_t__ state; int /*<<< orphan*/  bufev; struct event_base* base; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 scalar_t__ EVCON_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct evhttp_connection *evcon,
    struct event_base *base)
{
	FUNC0(evcon->base == NULL);
	FUNC0(evcon->state == EVCON_DISCONNECTED);
	evcon->base = base;
	FUNC1(base, evcon->bufev);
}