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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_md5_data {void* state; int /*<<< orphan*/  challenge; } ;
struct TYPE_2__ {int /*<<< orphan*/  password_len; int /*<<< orphan*/ * password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHALLENGE_LEN ; 
 int CHAP_MD5_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_MD5 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* SUCCESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct wpabuf*) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC3 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_md5_data *data = priv;
	const u8 *pos;
	size_t plen;
	u8 hash[CHAP_MD5_LEN], id;

	if (sm->user == NULL || sm->user->password == NULL ||
	    sm->user->password_hash) {
		FUNC5(MSG_INFO, "EAP-MD5: Plaintext password not "
			   "configured");
		data->state = FAILURE;
		return;
	}

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_MD5, respData, &plen);
	if (pos == NULL || *pos != CHAP_MD5_LEN || plen < 1 + CHAP_MD5_LEN)
		return; /* Should not happen - frame already validated */

	pos++; /* Skip response len */
	FUNC4(MSG_MSGDUMP, "EAP-MD5: Response", pos, CHAP_MD5_LEN);

	id = FUNC1(respData);
	if (FUNC0(id, sm->user->password, sm->user->password_len,
		     data->challenge, CHALLENGE_LEN, hash)) {
		FUNC5(MSG_INFO, "EAP-MD5: CHAP MD5 operation failed");
		data->state = FAILURE;
		return;
	}

	if (FUNC3(hash, pos, CHAP_MD5_LEN) == 0) {
		FUNC5(MSG_DEBUG, "EAP-MD5: Done - Success");
		data->state = SUCCESS;
	} else {
		FUNC5(MSG_DEBUG, "EAP-MD5: Done - Failure");
		data->state = FAILURE;
	}
}