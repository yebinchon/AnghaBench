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
struct TYPE_2__ {int /*<<< orphan*/  const* addr; } ;
union wpa_event_data {TYPE_1__ disassoc_info; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_DISASSOC ; 
 int /*<<< orphan*/  FUNC0 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static inline void FUNC2(void *ctx, const u8 *addr)
{
	union wpa_event_data event;
	FUNC0(&event, 0, sizeof(event));
	event.disassoc_info.addr = addr;
	FUNC1(ctx, EVENT_DISASSOC, &event);
}