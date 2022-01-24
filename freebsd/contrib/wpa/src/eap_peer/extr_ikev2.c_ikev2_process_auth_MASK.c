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
typedef  int /*<<< orphan*/  u8 ;
struct ikev2_responder_data {int peer_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
#define  PEER_AUTH_CERT 129 
#define  PEER_AUTH_SECRET 128 
 int FUNC0 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct ikev2_responder_data *data,
			      const u8 *auth, size_t auth_len)
{
	u8 auth_method;

	if (auth == NULL) {
		FUNC3(MSG_INFO, "IKEV2: No Authentication Payload");
		return -1;
	}

	if (auth_len < 4) {
		FUNC3(MSG_INFO, "IKEV2: Too short Authentication "
			   "Payload");
		return -1;
	}

	auth_method = auth[0];
	auth += 4;
	auth_len -= 4;

	FUNC3(MSG_DEBUG, "IKEV2: Auth Method %d", auth_method);
	FUNC2(MSG_MSGDUMP, "IKEV2: Authentication Data", auth, auth_len);

	switch (data->peer_auth) {
	case PEER_AUTH_CERT:
		return FUNC0(data, auth_method, auth,
					       auth_len);
	case PEER_AUTH_SECRET:
		return FUNC1(data, auth_method, auth,
						 auth_len);
	}

	return -1;
}