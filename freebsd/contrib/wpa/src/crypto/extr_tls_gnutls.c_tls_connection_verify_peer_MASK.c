#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int hash_len; unsigned int depth; char* subject; int /*<<< orphan*/ * hash; struct wpabuf* cert; } ;
union tls_event_data {TYPE_1__ peer_cert; void* data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct tls_connection {int /*<<< orphan*/  failed; TYPE_2__* global; int /*<<< orphan*/  disable_time_checks; int /*<<< orphan*/  domain_match; int /*<<< orphan*/  suffix_match; scalar_t__ verify_peer; } ;
struct os_time {scalar_t__ sec; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;
typedef  union tls_event_data gnutls_typed_vdata_st ;
typedef  int /*<<< orphan*/  gnutls_session_t ;
struct TYPE_10__ {size_t size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ gnutls_datum_t ;
typedef  int /*<<< orphan*/  gnutls_alert_description_t ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_9__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ;int /*<<< orphan*/  server; scalar_t__ cert_in_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_AL_FATAL ; 
 int /*<<< orphan*/  GNUTLS_A_BAD_CERTIFICATE ; 
 int /*<<< orphan*/  GNUTLS_A_CERTIFICATE_EXPIRED ; 
 int /*<<< orphan*/  GNUTLS_A_CERTIFICATE_REVOKED ; 
 int /*<<< orphan*/  GNUTLS_A_INSUFFICIENT_SECURITY ; 
 int /*<<< orphan*/  GNUTLS_A_INTERNAL_ERROR ; 
 int /*<<< orphan*/  GNUTLS_A_UNKNOWN_CA ; 
 unsigned int GNUTLS_CERT_EXPIRED ; 
 unsigned int GNUTLS_CERT_INSECURE_ALGORITHM ; 
 unsigned int GNUTLS_CERT_INVALID ; 
 unsigned int GNUTLS_CERT_NOT_ACTIVATED ; 
 unsigned int GNUTLS_CERT_REVOKED ; 
 unsigned int GNUTLS_CERT_SIGNER_NOT_FOUND ; 
 int /*<<< orphan*/  GNUTLS_DT_KEY_PURPOSE_OID ; 
 int GNUTLS_E_CERTIFICATE_ERROR ; 
 scalar_t__ GNUTLS_KP_TLS_WWW_SERVER ; 
 int /*<<< orphan*/  GNUTLS_X509_FMT_DER ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  TLS_CERT_CHAIN_SUCCESS ; 
 int /*<<< orphan*/  TLS_FAIL_BAD_CERTIFICATE ; 
 int /*<<< orphan*/  TLS_FAIL_DOMAIN_MISMATCH ; 
 int /*<<< orphan*/  TLS_FAIL_DOMAIN_SUFFIX_MISMATCH ; 
 int /*<<< orphan*/  TLS_FAIL_EXPIRED ; 
 int /*<<< orphan*/  TLS_FAIL_NOT_YET_VALID ; 
 int /*<<< orphan*/  TLS_FAIL_REVOKED ; 
 int /*<<< orphan*/  TLS_FAIL_UNTRUSTED ; 
 int /*<<< orphan*/  TLS_PEER_CERTIFICATE ; 
 scalar_t__ FUNC0 (struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,union tls_event_data*,int,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tls_connection* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tls_connection*,TYPE_3__ const*,unsigned int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,size_t*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct os_time*) ; 
 char* FUNC18 (size_t) ; 
 int /*<<< orphan*/  FUNC19 (union tls_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC26 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC27 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC28(gnutls_session_t session)
{
	struct tls_connection *conn;
	unsigned int status, num_certs, i;
	struct os_time now;
	const gnutls_datum_t *certs;
	gnutls_x509_crt_t cert;
	gnutls_alert_description_t err;
	int res;

	conn = FUNC8(session);
	if (!conn->verify_peer) {
		FUNC25(MSG_DEBUG,
			   "GnuTLS: No peer certificate verification enabled");
		return 0;
	}

	FUNC25(MSG_DEBUG, "GnuTSL: Verifying peer certificate");

#if GNUTLS_VERSION_NUMBER >= 0x030300
	{
		gnutls_typed_vdata_st data[1];
		unsigned int elements = 0;

		os_memset(data, 0, sizeof(data));
		if (!conn->global->server) {
			data[elements].type = GNUTLS_DT_KEY_PURPOSE_OID;
			data[elements].data = (void *) GNUTLS_KP_TLS_WWW_SERVER;
			elements++;
		}
		res = gnutls_certificate_verify_peers(session, data, 1,
						      &status);
	}
#else /* < 3.3.0 */
	res = FUNC6(session, &status);
#endif
	if (res < 0) {
		FUNC25(MSG_INFO, "TLS: Failed to verify peer "
			   "certificate chain");
		err = GNUTLS_A_INTERNAL_ERROR;
		goto out;
	}

#if GNUTLS_VERSION_NUMBER >= 0x030104
	{
		gnutls_datum_t info;
		int ret, type;

		type = gnutls_certificate_type_get(session);
		ret = gnutls_certificate_verification_status_print(status, type,
								   &info, 0);
		if (ret < 0) {
			wpa_printf(MSG_DEBUG,
				   "GnuTLS: Failed to print verification status");
			err = GNUTLS_A_INTERNAL_ERROR;
			goto out;
		}
		wpa_printf(MSG_DEBUG, "GnuTLS: %s", info.data);
		gnutls_free(info.data);
	}
#endif /* GnuTLS 3.1.4 or newer */

	certs = FUNC2(session, &num_certs);
	if (certs == NULL || num_certs == 0) {
		FUNC25(MSG_INFO, "TLS: No peer certificate chain received");
		err = GNUTLS_A_UNKNOWN_CA;
		goto out;
	}

	if (conn->verify_peer && (status & GNUTLS_CERT_INVALID)) {
		FUNC25(MSG_INFO, "TLS: Peer certificate not trusted");
		if (status & GNUTLS_CERT_INSECURE_ALGORITHM) {
			FUNC25(MSG_INFO, "TLS: Certificate uses insecure "
				   "algorithm");
			FUNC9(conn, NULL, 0, NULL,
					      "certificate uses insecure algorithm",
					      TLS_FAIL_BAD_CERTIFICATE);
			err = GNUTLS_A_INSUFFICIENT_SECURITY;
			goto out;
		}
		if (status & GNUTLS_CERT_NOT_ACTIVATED) {
			FUNC25(MSG_INFO, "TLS: Certificate not yet "
				   "activated");
			FUNC9(conn, NULL, 0, NULL,
					      "certificate not yet valid",
					      TLS_FAIL_NOT_YET_VALID);
			err = GNUTLS_A_CERTIFICATE_EXPIRED;
			goto out;
		}
		if (status & GNUTLS_CERT_EXPIRED) {
			FUNC25(MSG_INFO, "TLS: Certificate expired");
			FUNC9(conn, NULL, 0, NULL,
					      "certificate has expired",
					      TLS_FAIL_EXPIRED);
			err = GNUTLS_A_CERTIFICATE_EXPIRED;
			goto out;
		}
		FUNC9(conn, NULL, 0, NULL,
				      "untrusted certificate",
				      TLS_FAIL_UNTRUSTED);
		err = GNUTLS_A_INTERNAL_ERROR;
		goto out;
	}

	if (status & GNUTLS_CERT_SIGNER_NOT_FOUND) {
		FUNC25(MSG_INFO, "TLS: Peer certificate does not have a "
			   "known issuer");
		FUNC9(conn, NULL, 0, NULL, "signed not found",
				      TLS_FAIL_UNTRUSTED);
		err = GNUTLS_A_UNKNOWN_CA;
		goto out;
	}

	if (status & GNUTLS_CERT_REVOKED) {
		FUNC25(MSG_INFO, "TLS: Peer certificate has been revoked");
		FUNC9(conn, NULL, 0, NULL,
				      "certificate revoked",
				      TLS_FAIL_REVOKED);
		err = GNUTLS_A_CERTIFICATE_REVOKED;
		goto out;
	}

	if (status != 0) {
		FUNC25(MSG_INFO, "TLS: Unknown verification status: %d",
			   status);
		err = GNUTLS_A_INTERNAL_ERROR;
		goto out;
	}

	if (FUNC0(conn, session, &err))
		goto out;

	FUNC17(&now);

	for (i = 0; i < num_certs; i++) {
		char *buf;
		size_t len;
		if (FUNC15(&cert) < 0) {
			FUNC25(MSG_INFO, "TLS: Certificate initialization "
				   "failed");
			err = GNUTLS_A_BAD_CERTIFICATE;
			goto out;
		}

		if (FUNC14(cert, &certs[i],
					   GNUTLS_X509_FMT_DER) < 0) {
			FUNC25(MSG_INFO, "TLS: Could not parse peer "
				   "certificate %d/%d", i + 1, num_certs);
			FUNC10(cert);
			err = GNUTLS_A_BAD_CERTIFICATE;
			goto out;
		}

		FUNC12(cert, NULL, &len);
		len++;
		buf = FUNC18(len + 1);
		if (buf) {
			buf[0] = buf[len] = '\0';
			FUNC12(cert, buf, &len);
		}
		FUNC25(MSG_DEBUG, "TLS: Peer cert chain %d/%d: %s",
			   i + 1, num_certs, buf);

		if (conn->global->event_cb) {
			struct wpabuf *cert_buf = NULL;
			union tls_event_data ev;
#ifdef CONFIG_SHA256
			u8 hash[32];
			const u8 *_addr[1];
			size_t _len[1];
#endif /* CONFIG_SHA256 */

			FUNC19(&ev, 0, sizeof(ev));
			if (conn->global->cert_in_cb) {
				cert_buf = FUNC26(certs[i].data,
							     certs[i].size);
				ev.peer_cert.cert = cert_buf;
			}
#ifdef CONFIG_SHA256
			_addr[0] = certs[i].data;
			_len[0] = certs[i].size;
			if (sha256_vector(1, _addr, _len, hash) == 0) {
				ev.peer_cert.hash = hash;
				ev.peer_cert.hash_len = sizeof(hash);
			}
#endif /* CONFIG_SHA256 */
			ev.peer_cert.depth = i;
			ev.peer_cert.subject = buf;
			conn->global->event_cb(conn->global->cb_ctx,
					       TLS_PEER_CERTIFICATE, &ev);
			FUNC27(cert_buf);
		}

		if (i == 0) {
			if (conn->suffix_match &&
			    !FUNC24(cert, conn->suffix_match, 0)) {
				FUNC25(MSG_WARNING,
					   "TLS: Domain suffix match '%s' not found",
					   conn->suffix_match);
				FUNC9(
					conn, &certs[i], i, buf,
					"Domain suffix mismatch",
					TLS_FAIL_DOMAIN_SUFFIX_MISMATCH);
				err = GNUTLS_A_BAD_CERTIFICATE;
				FUNC10(cert);
				FUNC16(buf);
				goto out;
			}

#if GNUTLS_VERSION_NUMBER >= 0x030300
			if (conn->domain_match &&
			    !tls_match_suffix(cert, conn->domain_match, 1)) {
				wpa_printf(MSG_WARNING,
					   "TLS: Domain match '%s' not found",
					   conn->domain_match);
				gnutls_tls_fail_event(
					conn, &certs[i], i, buf,
					"Domain mismatch",
					TLS_FAIL_DOMAIN_MISMATCH);
				err = GNUTLS_A_BAD_CERTIFICATE;
				gnutls_x509_crt_deinit(cert);
				os_free(buf);
				goto out;
			}
#endif /* >= 3.3.0 */

			/* TODO: validate altsubject_match.
			 * For now, any such configuration is rejected in
			 * tls_connection_set_params() */

#if GNUTLS_VERSION_NUMBER < 0x030300
			/*
			 * gnutls_certificate_verify_peers() not available, so
			 * need to check EKU separately.
			 */
			if (!conn->global->server &&
			    !FUNC20(cert)) {
				FUNC25(MSG_WARNING,
					   "GnuTLS: No server EKU");
				FUNC9(
					conn, &certs[i], i, buf,
					"No server EKU",
					TLS_FAIL_BAD_CERTIFICATE);
				err = GNUTLS_A_BAD_CERTIFICATE;
				FUNC10(cert);
				FUNC16(buf);
				goto out;
			}
#endif /* < 3.3.0 */
		}

		if (!conn->disable_time_checks &&
		    (FUNC13(cert) < now.sec ||
		     FUNC11(cert) > now.sec)) {
			FUNC25(MSG_INFO, "TLS: Peer certificate %d/%d is "
				   "not valid at this time",
				   i + 1, num_certs);
			FUNC9(
				conn, &certs[i], i, buf,
				"Certificate is not valid at this time",
				TLS_FAIL_EXPIRED);
			FUNC10(cert);
			FUNC16(buf);
			err = GNUTLS_A_CERTIFICATE_EXPIRED;
			goto out;
		}

		FUNC16(buf);

		FUNC10(cert);
	}

	if (conn->global->event_cb != NULL)
		conn->global->event_cb(conn->global->cb_ctx,
				       TLS_CERT_CHAIN_SUCCESS, NULL);

	return 0;

out:
	conn->failed++;
	FUNC1(session, GNUTLS_AL_FATAL, err);
	return GNUTLS_E_CERTIFICATE_ERROR;
}