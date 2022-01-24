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
struct radius_msg {TYPE_1__* hdr; } ;
struct radius_ms_mppe_keys {void* recv; int /*<<< orphan*/  recv_len; void* send; int /*<<< orphan*/  send_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  authenticator; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ID_MICROSOFT ; 
 void* FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct radius_ms_mppe_keys* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

struct radius_ms_mppe_keys *
FUNC5(struct radius_msg *msg, struct radius_msg *sent_msg,
		       const u8 *secret, size_t secret_len)
{
	u8 *key;
	size_t keylen;
	struct radius_ms_mppe_keys *keys;

	if (msg == NULL || sent_msg == NULL)
		return NULL;

	keys = FUNC2(sizeof(*keys));
	if (keys == NULL)
		return NULL;

	key = FUNC3(msg, RADIUS_VENDOR_ID_MICROSOFT,
					 RADIUS_VENDOR_ATTR_MS_MPPE_SEND_KEY,
					 &keylen);
	if (key) {
		keys->send = FUNC0(key, keylen,
					    sent_msg->hdr->authenticator,
					    secret, secret_len,
					    &keys->send_len);
		if (!keys->send) {
			FUNC4(MSG_DEBUG,
				   "RADIUS: Failed to decrypt send key");
		}
		FUNC1(key);
	}

	key = FUNC3(msg, RADIUS_VENDOR_ID_MICROSOFT,
					 RADIUS_VENDOR_ATTR_MS_MPPE_RECV_KEY,
					 &keylen);
	if (key) {
		keys->recv = FUNC0(key, keylen,
					    sent_msg->hdr->authenticator,
					    secret, secret_len,
					    &keys->recv_len);
		if (!keys->recv) {
			FUNC4(MSG_DEBUG,
				   "RADIUS: Failed to decrypt recv key");
		}
		FUNC1(key);
	}

	return keys;
}