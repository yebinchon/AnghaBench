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
typedef  scalar_t__ u8 ;
struct tlsv1_client {size_t dh_p_len; int /*<<< orphan*/  dh_p; int /*<<< orphan*/  dh_ys_len; int /*<<< orphan*/  dh_ys; int /*<<< orphan*/  dh_g_len; int /*<<< orphan*/  dh_g; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,size_t,int /*<<< orphan*/ ,size_t,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct tlsv1_client*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct tlsv1_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct tlsv1_client *conn, u8 **pos, u8 *end)
{
	/* ClientDiffieHellmanPublic */
	u8 *csecret, *csecret_start, *dh_yc, *shared;
	size_t csecret_len, dh_yc_len, shared_len;

	csecret_len = conn->dh_p_len;
	csecret = FUNC3(csecret_len);
	if (csecret == NULL) {
		FUNC13(MSG_DEBUG, "TLSv1: Failed to allocate "
			   "memory for Yc (Diffie-Hellman)");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	if (FUNC7(csecret, csecret_len)) {
		FUNC13(MSG_DEBUG, "TLSv1: Failed to get random "
			   "data for Diffie-Hellman");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		return -1;
	}

	if (FUNC4(csecret, conn->dh_p, csecret_len) > 0)
		csecret[0] = 0; /* make sure Yc < p */

	csecret_start = csecret;
	while (csecret_len > 1 && *csecret_start == 0) {
		csecret_start++;
		csecret_len--;
	}
	FUNC12(MSG_DEBUG, "TLSv1: DH client's secret value",
			csecret_start, csecret_len);

	/* Yc = g^csecret mod p */
	dh_yc_len = conn->dh_p_len;
	dh_yc = FUNC3(dh_yc_len);
	if (dh_yc == NULL) {
		FUNC13(MSG_DEBUG, "TLSv1: Failed to allocate "
			   "memory for Diffie-Hellman");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		return -1;
	}
	if (FUNC1(conn->dh_g, conn->dh_g_len,
			   csecret_start, csecret_len,
			   conn->dh_p, conn->dh_p_len,
			   dh_yc, &dh_yc_len)) {
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		FUNC2(dh_yc);
		return -1;
	}

	FUNC11(MSG_DEBUG, "TLSv1: DH Yc (client's public value)",
		    dh_yc, dh_yc_len);

	if (end - *pos < 2) {
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		FUNC2(dh_yc);
		return -1;
	}
	FUNC0(*pos, dh_yc_len);
	*pos += 2;
	if (dh_yc_len > (size_t) (end - *pos)) {
		FUNC13(MSG_DEBUG, "TLSv1: Not enough room in the "
			   "message buffer for Yc");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		FUNC2(dh_yc);
		return -1;
	}
	FUNC5(*pos, dh_yc, dh_yc_len);
	*pos += dh_yc_len;
	FUNC2(dh_yc);

	shared_len = conn->dh_p_len;
	shared = FUNC3(shared_len);
	if (shared == NULL) {
		FUNC13(MSG_DEBUG, "TLSv1: Could not allocate memory for "
			   "DH");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		return -1;
	}

	/* shared = Ys^csecret mod p */
	if (FUNC1(conn->dh_ys, conn->dh_ys_len,
			   csecret_start, csecret_len,
			   conn->dh_p, conn->dh_p_len,
			   shared, &shared_len)) {
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(csecret);
		FUNC2(shared);
		return -1;
	}
	FUNC12(MSG_DEBUG, "TLSv1: Shared secret from DH key exchange",
			shared, shared_len);

	FUNC6(csecret_start, 0, csecret_len);
	FUNC2(csecret);
	if (FUNC9(conn, shared, shared_len)) {
		FUNC13(MSG_DEBUG, "TLSv1: Failed to derive keys");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC2(shared);
		return -1;
	}
	FUNC6(shared, 0, shared_len);
	FUNC2(shared);
	FUNC10(conn);
	return 0;
}