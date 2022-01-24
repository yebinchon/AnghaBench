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
typedef  int /*<<< orphan*/  u8 ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct TYPE_2__ {int ttls_auth; size_t password_len; int /*<<< orphan*/  password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int EAP_TTLS_AUTH_PAP ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_ttls_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm,
					struct eap_ttls_data *data,
					const u8 *user_password,
					size_t user_password_len)
{
	if (!sm->user || !sm->user->password || sm->user->password_hash ||
	    !(sm->user->ttls_auth & EAP_TTLS_AUTH_PAP)) {
		FUNC3(MSG_DEBUG, "EAP-TTLS/PAP: No plaintext user "
			   "password configured");
		FUNC0(data, FAILURE);
		return;
	}

	if (sm->user->password_len != user_password_len ||
	    FUNC2(sm->user->password, user_password,
			    user_password_len) != 0) {
		FUNC3(MSG_DEBUG, "EAP-TTLS/PAP: Invalid user password");
		FUNC0(data, FAILURE);
		return;
	}

	FUNC3(MSG_DEBUG, "EAP-TTLS/PAP: Correct user password");
	FUNC0(data, SUCCESS);
	FUNC1(sm, data);
}