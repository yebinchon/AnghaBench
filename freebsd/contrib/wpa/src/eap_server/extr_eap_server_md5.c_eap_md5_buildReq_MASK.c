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
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_md5_data {void* state; int /*<<< orphan*/  challenge; } ;

/* Variables and functions */
 scalar_t__ CHALLENGE_LEN ; 
 void* CONTINUE ; 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_MD5 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_md5_data *data = priv;
	struct wpabuf *req;

	if (FUNC1(data->challenge, CHALLENGE_LEN)) {
		FUNC3(MSG_ERROR, "EAP-MD5: Failed to get random data");
		data->state = FAILURE;
		return NULL;
	}

	req = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_MD5, 1 + CHALLENGE_LEN,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC3(MSG_ERROR, "EAP-MD5: Failed to allocate memory for "
			   "request");
		data->state = FAILURE;
		return NULL;
	}

	FUNC5(req, CHALLENGE_LEN);
	FUNC4(req, data->challenge, CHALLENGE_LEN);
	FUNC2(MSG_MSGDUMP, "EAP-MD5: Challenge", data->challenge,
		    CHALLENGE_LEN);

	data->state = CONTINUE;

	return req;
}