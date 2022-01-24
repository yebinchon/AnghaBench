#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  radius; TYPE_3__* conf; } ;
struct hostapd_acl_query_data {int /*<<< orphan*/  radius_id; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/  radius_auth_req_attr; TYPE_2__* radius; } ;
struct TYPE_5__ {TYPE_1__* auth_server; } ;
struct TYPE_4__ {int /*<<< orphan*/  shared_secret_len; int /*<<< orphan*/  shared_secret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  RADIUS_802_1X_ADDR_FORMAT ; 
 int /*<<< orphan*/  RADIUS_ADDR_FORMAT ; 
 int /*<<< orphan*/  RADIUS_ATTR_CALLING_STATION_ID ; 
 int /*<<< orphan*/  RADIUS_ATTR_CONNECT_INFO ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 int /*<<< orphan*/  RADIUS_AUTH ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REQUEST ; 
 scalar_t__ FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radius_msg*) ; 
 scalar_t__ FUNC9 (struct radius_msg*) ; 
 struct radius_msg* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(struct hostapd_data *hapd, const u8 *addr,
				    struct hostapd_acl_query_data *query)
{
	struct radius_msg *msg;
	char buf[128];

	query->radius_id = FUNC4(hapd->radius);
	msg = FUNC10(RADIUS_CODE_ACCESS_REQUEST, query->radius_id);
	if (msg == NULL)
		return -1;

	if (FUNC9(msg) < 0) {
		FUNC11(MSG_INFO, "Could not make Request Authenticator");
		goto fail;
	}

	FUNC2(buf, sizeof(buf), RADIUS_ADDR_FORMAT, FUNC0(addr));
	if (!FUNC6(msg, RADIUS_ATTR_USER_NAME, (u8 *) buf,
				 FUNC3(buf))) {
		FUNC11(MSG_DEBUG, "Could not add User-Name");
		goto fail;
	}

	if (!FUNC7(
		    msg, (u8 *) buf, FUNC3(buf),
		    hapd->conf->radius->auth_server->shared_secret,
		    hapd->conf->radius->auth_server->shared_secret_len)) {
		FUNC11(MSG_DEBUG, "Could not add User-Password");
		goto fail;
	}

	if (FUNC1(hapd, hapd->conf->radius_auth_req_attr,
				   NULL, msg) < 0)
		goto fail;

	FUNC2(buf, sizeof(buf), RADIUS_802_1X_ADDR_FORMAT,
		    FUNC0(addr));
	if (!FUNC6(msg, RADIUS_ATTR_CALLING_STATION_ID,
				 (u8 *) buf, FUNC3(buf))) {
		FUNC11(MSG_DEBUG, "Could not add Calling-Station-Id");
		goto fail;
	}

	FUNC2(buf, sizeof(buf), "CONNECT 11Mbps 802.11b");
	if (!FUNC6(msg, RADIUS_ATTR_CONNECT_INFO,
				 (u8 *) buf, FUNC3(buf))) {
		FUNC11(MSG_DEBUG, "Could not add Connect-Info");
		goto fail;
	}

	if (FUNC5(hapd->radius, msg, RADIUS_AUTH, addr) < 0)
		goto fail;
	return 0;

 fail:
	FUNC8(msg);
	return -1;
}