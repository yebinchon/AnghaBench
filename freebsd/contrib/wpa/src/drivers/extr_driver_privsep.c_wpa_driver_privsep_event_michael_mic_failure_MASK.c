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
struct TYPE_2__ {int /*<<< orphan*/  unicast; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_MICHAEL_MIC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC3(
	void *ctx, u8 *buf, size_t len)
{
	union wpa_event_data data;

	if (len != sizeof(int))
		return;

	FUNC1(&data, 0, sizeof(data));
	FUNC0(&data.michael_mic_failure.unicast, buf, sizeof(int));
	FUNC2(ctx, EVENT_MICHAEL_MIC_FAILURE, &data);
}