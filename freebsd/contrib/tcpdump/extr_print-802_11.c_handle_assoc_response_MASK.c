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
typedef  int uint16_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_body_t {size_t status_code; int aid; void* capability_info; } ;
typedef  int /*<<< orphan*/  pbody ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_AID_LEN ; 
 scalar_t__ IEEE802_11_CAPINFO_LEN ; 
 scalar_t__ IEEE802_11_STATUS_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,scalar_t__) ; 
 size_t NUM_STATUSES ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct mgmt_body_t*,int /*<<< orphan*/  const*,int,scalar_t__) ; 
 char** status_text ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                      const u_char *p, u_int length)
{
	struct mgmt_body_t pbody;
	int offset = 0;
	int ret;

	FUNC4(&pbody, 0, sizeof(pbody));

	if (!FUNC3(*p, IEEE802_11_CAPINFO_LEN + IEEE802_11_STATUS_LEN +
	    IEEE802_11_AID_LEN))
		return 0;
	if (length < IEEE802_11_CAPINFO_LEN + IEEE802_11_STATUS_LEN +
	    IEEE802_11_AID_LEN)
		return 0;
	pbody.capability_info = FUNC1(p);
	offset += IEEE802_11_CAPINFO_LEN;
	length -= IEEE802_11_CAPINFO_LEN;
	pbody.status_code = FUNC1(p+offset);
	offset += IEEE802_11_STATUS_LEN;
	length -= IEEE802_11_STATUS_LEN;
	pbody.aid = FUNC1(p+offset);
	offset += IEEE802_11_AID_LEN;
	length -= IEEE802_11_AID_LEN;

	ret = FUNC5(ndo, &pbody, p, offset, length);

	FUNC2((ndo, " AID(%x) :%s: %s", ((uint16_t)(pbody.aid << 2 )) >> 2 ,
	    FUNC0(pbody.capability_info) ? " PRIVACY " : "",
	    (pbody.status_code < NUM_STATUSES
		? status_text[pbody.status_code]
		: "n/a")));

	return ret;
}