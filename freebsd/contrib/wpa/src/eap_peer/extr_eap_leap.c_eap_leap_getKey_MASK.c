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
typedef  int /*<<< orphan*/  const u8 ;
struct eap_sm {int dummy; } ;
struct eap_leap_data {scalar_t__ state; int /*<<< orphan*/  const* peer_response; int /*<<< orphan*/  const* peer_challenge; int /*<<< orphan*/  const* ap_response; int /*<<< orphan*/  const* ap_challenge; } ;
typedef  int /*<<< orphan*/  pw_hash_hash ;
typedef  int /*<<< orphan*/  pw_hash ;

/* Variables and functions */
 size_t LEAP_CHALLENGE_LEN ; 
 scalar_t__ LEAP_DONE ; 
 int LEAP_KEY_LEN ; 
 size_t LEAP_RESPONSE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  const* FUNC0 (struct eap_sm*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static u8 * FUNC9(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_leap_data *data = priv;
	u8 *key, pw_hash_hash[16], pw_hash[16];
	const u8 *addr[5], *password;
	size_t elen[5], password_len;
	int pwhash;

	if (data->state != LEAP_DONE)
		return NULL;

	password = FUNC0(sm, &password_len, &pwhash);
	if (password == NULL)
		return NULL;

	key = FUNC6(LEAP_KEY_LEN);
	if (key == NULL)
		return NULL;

	if (pwhash) {
		if (FUNC2(password, pw_hash_hash)) {
			FUNC5(key);
			return NULL;
		}
	} else {
		if (FUNC4(password, password_len, pw_hash) ||
		    FUNC2(pw_hash, pw_hash_hash)) {
			FUNC5(key);
			return NULL;
		}
	}
	FUNC8(MSG_DEBUG, "EAP-LEAP: pw_hash_hash",
			pw_hash_hash, 16);
	FUNC7(MSG_DEBUG, "EAP-LEAP: peer_challenge",
		    data->peer_challenge, LEAP_CHALLENGE_LEN);
	FUNC7(MSG_DEBUG, "EAP-LEAP: peer_response",
		    data->peer_response, LEAP_RESPONSE_LEN);
	FUNC7(MSG_DEBUG, "EAP-LEAP: ap_challenge",
		    data->ap_challenge, LEAP_CHALLENGE_LEN);
	FUNC7(MSG_DEBUG, "EAP-LEAP: ap_response",
		    data->ap_response, LEAP_RESPONSE_LEN);

	addr[0] = pw_hash_hash;
	elen[0] = 16;
	addr[1] = data->ap_challenge;
	elen[1] = LEAP_CHALLENGE_LEN;
	addr[2] = data->ap_response;
	elen[2] = LEAP_RESPONSE_LEN;
	addr[3] = data->peer_challenge;
	elen[3] = LEAP_CHALLENGE_LEN;
	addr[4] = data->peer_response;
	elen[4] = LEAP_RESPONSE_LEN;
	FUNC3(5, addr, elen, key);
	FUNC8(MSG_DEBUG, "EAP-LEAP: master key", key, LEAP_KEY_LEN);
	*len = LEAP_KEY_LEN;

	FUNC1(pw_hash, sizeof(pw_hash));
	FUNC1(pw_hash_hash, sizeof(pw_hash_hash));

	return key;
}