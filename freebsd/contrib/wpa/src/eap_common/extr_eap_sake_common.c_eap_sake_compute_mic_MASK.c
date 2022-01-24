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

/* Variables and functions */
 int /*<<< orphan*/  EAP_SAKE_MIC_LEN ; 
 int EAP_SAKE_RAND_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_TEK_AUTH_LEN ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const u8 *tek_auth,
			 const u8 *rand_s, const u8 *rand_p,
			 const u8 *serverid, size_t serverid_len,
			 const u8 *peerid, size_t peerid_len,
			 int peer, const u8 *eap, size_t eap_len,
			 const u8 *mic_pos, u8 *mic)
{
	u8 _rand[2 * EAP_SAKE_RAND_LEN];
	u8 *tmp, *pos;
	size_t tmplen;
	int ret;

	tmplen = serverid_len + 1 + peerid_len + 1 + eap_len;
	tmp = FUNC2(tmplen);
	if (tmp == NULL)
		return -1;
	pos = tmp;
	if (peer) {
		if (peerid) {
			FUNC3(pos, peerid, peerid_len);
			pos += peerid_len;
		}
		*pos++ = 0x00;
		if (serverid) {
			FUNC3(pos, serverid, serverid_len);
			pos += serverid_len;
		}
		*pos++ = 0x00;

		FUNC3(_rand, rand_s, EAP_SAKE_RAND_LEN);
		FUNC3(_rand + EAP_SAKE_RAND_LEN, rand_p,
			  EAP_SAKE_RAND_LEN);
	} else {
		if (serverid) {
			FUNC3(pos, serverid, serverid_len);
			pos += serverid_len;
		}
		*pos++ = 0x00;
		if (peerid) {
			FUNC3(pos, peerid, peerid_len);
			pos += peerid_len;
		}
		*pos++ = 0x00;

		FUNC3(_rand, rand_p, EAP_SAKE_RAND_LEN);
		FUNC3(_rand + EAP_SAKE_RAND_LEN, rand_s,
			  EAP_SAKE_RAND_LEN);
	}

	FUNC3(pos, eap, eap_len);
	FUNC4(pos + (mic_pos - eap), 0, EAP_SAKE_MIC_LEN);

	ret = FUNC0(tek_auth, EAP_SAKE_TEK_AUTH_LEN,
			   peer ? "Peer MIC" : "Server MIC",
			   _rand, 2 * EAP_SAKE_RAND_LEN, tmp, tmplen,
			   mic, EAP_SAKE_MIC_LEN);

	FUNC1(tmp);

	return ret;
}