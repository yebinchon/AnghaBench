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
struct TYPE_2__ {int ievent; char* ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_priv_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIVSEP_EVENT_INTERFACE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_priv_interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct wpa_priv_interface *iface,
					   union wpa_event_data *data)
{
	int ievent;
	size_t len, maxlen;
	u8 *buf;
	char *ifname;

	if (data == NULL)
		return;

	ievent = data->interface_status.ievent;
	maxlen = sizeof(data->interface_status.ifname);
	ifname = data->interface_status.ifname;
	for (len = 0; len < maxlen && ifname[len]; len++)
		;

	buf = FUNC1(sizeof(int) + len);
	if (buf == NULL)
		return;

	FUNC2(buf, &ievent, sizeof(int));
	FUNC2(buf + sizeof(int), ifname, len);

	FUNC3(iface, PRIVSEP_EVENT_INTERFACE_STATUS,
			    buf, sizeof(int) + len);

	FUNC0(buf);

}