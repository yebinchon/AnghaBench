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
union wpa_event_data {int /*<<< orphan*/  pmkid_candidate; } ;
typedef  int /*<<< orphan*/  u8 ;
struct pmkid_candidate {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_PMKID_CANDIDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC3(void *ctx, u8 *buf,
						     size_t len)
{
	union wpa_event_data data;

	if (len != sizeof(struct pmkid_candidate))
		return;

	FUNC1(&data, 0, sizeof(data));
	FUNC0(&data.pmkid_candidate, buf, len);
	FUNC2(ctx, EVENT_PMKID_CANDIDATE, &data);
}