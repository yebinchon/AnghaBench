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
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_BCNINT_LEN ; 
 scalar_t__ IEEE802_11_CAPINFO_LEN ; 
 scalar_t__ IEEE802_11_TSTAMP_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct mgmt_body_t*,int /*<<< orphan*/  const*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(netdissect_options *ndo,
              const u_char *p, u_int length)
{
	struct mgmt_body_t pbody;
	int offset = 0;
	int ret;

	FUNC8(&pbody, 0, sizeof(pbody));

	if (!FUNC3(*p, IEEE802_11_TSTAMP_LEN + IEEE802_11_BCNINT_LEN +
	    IEEE802_11_CAPINFO_LEN))
		return 0;
	if (length < IEEE802_11_TSTAMP_LEN + IEEE802_11_BCNINT_LEN +
	    IEEE802_11_CAPINFO_LEN)
		return 0;
	FUNC7(&pbody.timestamp, p, IEEE802_11_TSTAMP_LEN);
	offset += IEEE802_11_TSTAMP_LEN;
	length -= IEEE802_11_TSTAMP_LEN;
	pbody.beacon_interval = FUNC1(p+offset);
	offset += IEEE802_11_BCNINT_LEN;
	length -= IEEE802_11_BCNINT_LEN;
	pbody.capability_info = FUNC1(p+offset);
	offset += IEEE802_11_CAPINFO_LEN;
	length -= IEEE802_11_CAPINFO_LEN;

	ret = FUNC9(ndo, &pbody, p, offset, length);

	FUNC6(pbody);
	FUNC5(pbody);
	FUNC2((ndo, " %s",
	    FUNC0(pbody.capability_info) ? "ESS" : "IBSS"));
	FUNC4(pbody);

	return ret;
}