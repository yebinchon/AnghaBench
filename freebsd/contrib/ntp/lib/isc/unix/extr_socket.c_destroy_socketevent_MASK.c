#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  bufferlist; } ;
typedef  TYPE_1__ isc_socketevent_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(isc_event_t *event) {
	isc_socketevent_t *ev = (isc_socketevent_t *)event;

	FUNC0(FUNC1(ev->bufferlist));

	(ev->destroy)(event);
}