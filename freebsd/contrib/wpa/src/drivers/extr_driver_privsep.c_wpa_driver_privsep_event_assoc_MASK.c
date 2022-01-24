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
struct TYPE_2__ {int req_ies_len; int /*<<< orphan*/ * req_ies; } ;
union wpa_event_data {TYPE_1__ assoc_info; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  enum wpa_event_type { ____Placeholder_wpa_event_type } wpa_event_type ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC3(void *ctx,
					   enum wpa_event_type event,
					   u8 *buf, size_t len)
{
	union wpa_event_data data;
	int inc_data = 0;
	u8 *pos, *end;
	int ie_len;

	FUNC1(&data, 0, sizeof(data));

	pos = buf;
	end = buf + len;

	if (end - pos < (int) sizeof(int))
		return;
	FUNC0(&ie_len, pos, sizeof(int));
	pos += sizeof(int);
	if (ie_len < 0 || ie_len > end - pos)
		return;
	if (ie_len) {
		data.assoc_info.req_ies = pos;
		data.assoc_info.req_ies_len = ie_len;
		pos += ie_len;
		inc_data = 1;
	}

	FUNC2(ctx, event, inc_data ? &data : NULL);
}