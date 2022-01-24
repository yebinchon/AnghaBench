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
struct evbuffer_cb_entry {int dummy; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer_cb_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer_cb_entry*) ; 
 int /*<<< orphan*/  next ; 

int
FUNC4(struct evbuffer *buffer,
			 struct evbuffer_cb_entry *ent)
{
	FUNC0(buffer);
	FUNC2(ent, next);
	FUNC1(buffer);
	FUNC3(ent);
	return 0;
}