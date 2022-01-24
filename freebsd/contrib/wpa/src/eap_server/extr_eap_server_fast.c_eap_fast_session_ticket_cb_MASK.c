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
typedef  int u8 ;
struct os_time {scalar_t__ sec; } ;
struct eap_fast_data {int* identity; size_t identity_len; int send_new_pac; scalar_t__ pac_key_refresh_time; int /*<<< orphan*/  pac_opaque_encr; } ;
typedef  scalar_t__ os_time_t ;

/* Variables and functions */
 int EAP_FAST_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  PAC_OPAQUE_TYPE_IDENTITY 131 
#define  PAC_OPAQUE_TYPE_KEY 130 
#define  PAC_OPAQUE_TYPE_LIFETIME 129 
#define  PAC_OPAQUE_TYPE_PAD 128 
 size_t PAC_TYPE_PAC_OPAQUE ; 
 size_t FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,size_t,int const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (struct os_time*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC12(void *ctx, const u8 *ticket, size_t len,
				      const u8 *client_random,
				      const u8 *server_random,
				      u8 *master_secret)
{
	struct eap_fast_data *data = ctx;
	const u8 *pac_opaque;
	size_t pac_opaque_len;
	u8 *buf, *pos, *end, *pac_key = NULL;
	os_time_t lifetime = 0;
	struct os_time now;
	u8 *identity = NULL;
	size_t identity_len = 0;

	FUNC11(MSG_DEBUG, "EAP-FAST: SessionTicket callback");
	FUNC8(MSG_DEBUG, "EAP-FAST: SessionTicket (PAC-Opaque)",
		    ticket, len);

	if (len < 4 || FUNC0(ticket) != PAC_TYPE_PAC_OPAQUE) {
		FUNC11(MSG_DEBUG, "EAP-FAST: Ignore invalid "
			   "SessionTicket");
		return 0;
	}

	pac_opaque_len = FUNC0(ticket + 2);
	pac_opaque = ticket + 4;
	if (pac_opaque_len < 8 || pac_opaque_len % 8 ||
	    pac_opaque_len > len - 4) {
		FUNC11(MSG_DEBUG, "EAP-FAST: Ignore invalid PAC-Opaque "
			   "(len=%lu left=%lu)",
			   (unsigned long) pac_opaque_len,
			   (unsigned long) len);
		return 0;
	}
	FUNC8(MSG_DEBUG, "EAP-FAST: Received PAC-Opaque",
		    pac_opaque, pac_opaque_len);

	buf = FUNC6(pac_opaque_len - 8);
	if (buf == NULL) {
		FUNC11(MSG_DEBUG, "EAP-FAST: Failed to allocate memory "
			   "for decrypting PAC-Opaque");
		return 0;
	}

	if (FUNC2(data->pac_opaque_encr, sizeof(data->pac_opaque_encr),
		       (pac_opaque_len - 8) / 8, pac_opaque, buf) < 0) {
		FUNC11(MSG_DEBUG, "EAP-FAST: Failed to decrypt "
			   "PAC-Opaque");
		FUNC4(buf);
		/*
		 * This may have been caused by server changing the PAC-Opaque
		 * encryption key, so just ignore this PAC-Opaque instead of
		 * failing the authentication completely. Provisioning can now
		 * be used to provision a new PAC.
		 */
		return 0;
	}

	end = buf + pac_opaque_len - 8;
	FUNC10(MSG_DEBUG, "EAP-FAST: Decrypted PAC-Opaque",
			buf, end - buf);

	pos = buf;
	while (end - pos > 1) {
		u8 id, elen;

		id = *pos++;
		elen = *pos++;
		if (elen > end - pos)
			break;

		switch (id) {
		case PAC_OPAQUE_TYPE_PAD:
			goto done;
		case PAC_OPAQUE_TYPE_KEY:
			if (elen != EAP_FAST_PAC_KEY_LEN) {
				FUNC11(MSG_DEBUG,
					   "EAP-FAST: Invalid PAC-Key length %d",
					   elen);
				FUNC4(buf);
				return -1;
			}
			pac_key = pos;
			FUNC10(MSG_DEBUG, "EAP-FAST: PAC-Key from "
					"decrypted PAC-Opaque",
					pac_key, EAP_FAST_PAC_KEY_LEN);
			break;
		case PAC_OPAQUE_TYPE_LIFETIME:
			if (elen != 4) {
				FUNC11(MSG_DEBUG, "EAP-FAST: Invalid "
					   "PAC-Key lifetime length %d",
					   elen);
				FUNC4(buf);
				return -1;
			}
			lifetime = FUNC1(pos);
			break;
		case PAC_OPAQUE_TYPE_IDENTITY:
			identity = pos;
			identity_len = elen;
			break;
		}

		pos += elen;
	}
done:

	if (pac_key == NULL) {
		FUNC11(MSG_DEBUG, "EAP-FAST: No PAC-Key included in "
			   "PAC-Opaque");
		FUNC4(buf);
		return -1;
	}

	if (identity) {
		FUNC9(MSG_DEBUG, "EAP-FAST: Identity from "
				  "PAC-Opaque", identity, identity_len);
		FUNC4(data->identity);
		data->identity = FUNC6(identity_len);
		if (data->identity) {
			FUNC7(data->identity, identity, identity_len);
			data->identity_len = identity_len;
		}
	}

	if (FUNC5(&now) < 0 || lifetime <= 0 || now.sec > lifetime) {
		FUNC11(MSG_DEBUG, "EAP-FAST: PAC-Key not valid anymore "
			   "(lifetime=%ld now=%ld)", lifetime, now.sec);
		data->send_new_pac = 2;
		/*
		 * Allow PAC to be used to allow a PAC update with some level
		 * of server authentication (i.e., do not fall back to full TLS
		 * handshake since we cannot be sure that the peer would be
		 * able to validate server certificate now). However, reject
		 * the authentication since the PAC was not valid anymore. Peer
		 * can connect again with the newly provisioned PAC after this.
		 */
	} else if (lifetime - now.sec < data->pac_key_refresh_time) {
		FUNC11(MSG_DEBUG, "EAP-FAST: PAC-Key soft timeout; send "
			   "an update if authentication succeeds");
		data->send_new_pac = 1;
	}

	FUNC3(pac_key, server_random, client_random,
				      master_secret);

	FUNC4(buf);

	return 1;
}