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
typedef  int u8 ;
struct wps_parse_attr {scalar_t__ num_req_dev_type; int /*<<< orphan*/  req_dev_type; } ;
struct wpabuf {int dummy; } ;
struct p2p_group_member {int /*<<< orphan*/ * client_info; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int WPS_DEV_TYPE_LEN ; 
 scalar_t__ FUNC0 (int const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_parse_attr*) ; 

__attribute__((used)) static int FUNC4(struct p2p_group_member *m,
				     struct wpabuf *wps)
{
	const u8 *pos, *end;
	struct wps_parse_attr attr;
	u8 num_sec;

	if (m->client_info == NULL || wps == NULL)
		return 0;

	pos = FUNC1(m->client_info);
	end = pos + FUNC2(m->client_info);

	pos += 1 + 2 * ETH_ALEN + 1 + 2;
	if (end - pos < WPS_DEV_TYPE_LEN + 1)
		return 0;

	if (FUNC3(wps, &attr))
		return 1; /* assume no Requested Device Type attributes */

	if (attr.num_req_dev_type == 0)
		return 1; /* no Requested Device Type attributes -> match */

	if (FUNC0(pos, attr.req_dev_type, attr.num_req_dev_type))
		return 1; /* Match with client Primary Device Type */

	pos += WPS_DEV_TYPE_LEN;
	num_sec = *pos++;
	if (end - pos < num_sec * WPS_DEV_TYPE_LEN)
		return 0;
	while (num_sec > 0) {
		num_sec--;
		if (FUNC0(pos, attr.req_dev_type,
					attr.num_req_dev_type))
			return 1; /* Match with client Secondary Device Type */
		pos += WPS_DEV_TYPE_LEN;
	}

	/* No matching device type found */
	return 0;
}