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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_body_t {void* capability_info; void* beacon_interval; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  pbody ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_BCNINT_LEN ; 
 scalar_t__ IEEE802_11_CAPINFO_LEN ; 
 scalar_t__ IEEE802_11_TSTAMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct mgmt_body_t*,int /*<<< orphan*/  const*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(netdissect_options *ndo,
                      const u_char *p, u_int length)
{
	struct mgmt_body_t  pbody;
	int offset = 0;
	int ret;

	FUNC6(&pbody, 0, sizeof(pbody));

	if (!FUNC1(*p, IEEE802_11_TSTAMP_LEN + IEEE802_11_BCNINT_LEN +
	    IEEE802_11_CAPINFO_LEN))
		return 0;
	if (length < IEEE802_11_TSTAMP_LEN + IEEE802_11_BCNINT_LEN +
	    IEEE802_11_CAPINFO_LEN)
		return 0;
	FUNC5(&pbody.timestamp, p, IEEE802_11_TSTAMP_LEN);
	offset += IEEE802_11_TSTAMP_LEN;
	length -= IEEE802_11_TSTAMP_LEN;
	pbody.beacon_interval = FUNC0(p+offset);
	offset += IEEE802_11_BCNINT_LEN;
	length -= IEEE802_11_BCNINT_LEN;
	pbody.capability_info = FUNC0(p+offset);
	offset += IEEE802_11_CAPINFO_LEN;
	length -= IEEE802_11_CAPINFO_LEN;

	ret = FUNC7(ndo, &pbody, p, offset, length);

	FUNC4(pbody);
	FUNC3(pbody);
	FUNC2(pbody);

	return ret;
}