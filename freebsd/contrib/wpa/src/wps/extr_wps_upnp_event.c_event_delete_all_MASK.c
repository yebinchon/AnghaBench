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
struct wps_event_ {int dummy; } ;
struct subscription {struct wps_event_* current_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wps_event_*) ; 
 struct wps_event_* FUNC1 (struct subscription*) ; 

void FUNC2(struct subscription *s)
{
	struct wps_event_ *e;
	while ((e = FUNC1(s)) != NULL)
		FUNC0(e);
	if (s->current_event) {
		FUNC0(s->current_event);
		/* will set: s->current_event = NULL;  */
	}
}