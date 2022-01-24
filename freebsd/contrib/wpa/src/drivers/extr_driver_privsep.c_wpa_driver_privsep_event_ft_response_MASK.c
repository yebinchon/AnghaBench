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
struct TYPE_2__ {size_t ies_len; int /*<<< orphan*/ * ies; int /*<<< orphan*/ * target_ap; int /*<<< orphan*/  ft_action; } ;
union wpa_event_data {TYPE_1__ ft_ies; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_FT_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,union wpa_event_data*) ; 

__attribute__((used)) static void FUNC3(void *ctx, u8 *buf,
						 size_t len)
{
	union wpa_event_data data;

	if (len < sizeof(int) + ETH_ALEN)
		return;

	FUNC1(&data, 0, sizeof(data));
	FUNC0(&data.ft_ies.ft_action, buf, sizeof(int));
	FUNC0(data.ft_ies.target_ap, buf + sizeof(int), ETH_ALEN);
	data.ft_ies.ies = buf + sizeof(int) + ETH_ALEN;
	data.ft_ies.ies_len = len - sizeof(int) - ETH_ALEN;
	FUNC2(ctx, EVENT_FT_RESPONSE, &data);
}