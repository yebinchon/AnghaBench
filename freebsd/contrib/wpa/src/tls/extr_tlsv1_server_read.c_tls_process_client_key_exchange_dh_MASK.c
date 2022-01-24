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
typedef  int u16 ;
struct tlsv1_server {size_t dh_secret_len; int /*<<< orphan*/ * dh_secret; TYPE_1__* cred; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dh_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tlsv1_server*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct tlsv1_server*,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_server*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(
	struct tlsv1_server *conn, const u8 *pos, const u8 *end)
{
	const u8 *dh_yc;
	u16 dh_yc_len;
	u8 *shared;
	size_t shared_len;
	int res;
	const u8 *dh_p;
	size_t dh_p_len;

	/*
	 * struct {
	 *   select (PublicValueEncoding) {
	 *     case implicit: struct { };
	 *     case explicit: opaque dh_Yc<1..2^16-1>;
	 *   } dh_public;
	 * } ClientDiffieHellmanPublic;
	 */

	FUNC8(conn, "ClientDiffieHellmanPublic received");
	FUNC9(MSG_MSGDUMP, "TLSv1: ClientDiffieHellmanPublic",
		    pos, end - pos);

	if (end == pos) {
		FUNC11(MSG_DEBUG, "TLSv1: Implicit public value encoding "
			   "not supported");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	if (end - pos < 3) {
		FUNC8(conn, "Invalid client public value length");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	dh_yc_len = FUNC0(pos);
	dh_yc = pos + 2;

	if (dh_yc_len > end - dh_yc) {
		FUNC8(conn, "Client public value overflow (length %d)",
				 dh_yc_len);
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	FUNC9(MSG_DEBUG, "TLSv1: DH Yc (client's public value)",
		    dh_yc, dh_yc_len);

	if (conn->cred == NULL || conn->cred->dh_p == NULL ||
	    conn->dh_secret == NULL) {
		FUNC11(MSG_DEBUG, "TLSv1: No DH parameters available");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	FUNC7(conn, &dh_p, &dh_p_len);

	shared_len = dh_p_len;
	shared = FUNC3(shared_len);
	if (shared == NULL) {
		FUNC11(MSG_DEBUG, "TLSv1: Could not allocate memory for "
			   "DH");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	/* shared = Yc^secret mod p */
	if (FUNC1(dh_yc, dh_yc_len, conn->dh_secret,
			   conn->dh_secret_len, dh_p, dh_p_len,
			   shared, &shared_len)) {
		FUNC2(shared);
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	FUNC10(MSG_DEBUG, "TLSv1: Shared secret from DH key exchange",
			shared, shared_len);

	FUNC4(conn->dh_secret, 0, conn->dh_secret_len);
	FUNC2(conn->dh_secret);
	conn->dh_secret = NULL;

	res = FUNC6(conn, shared, shared_len);

	/* Clear the pre-master secret since it is not needed anymore */
	FUNC4(shared, 0, shared_len);
	FUNC2(shared);

	if (res) {
		FUNC11(MSG_DEBUG, "TLSv1: Failed to derive keys");
		FUNC5(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	return 0;
}