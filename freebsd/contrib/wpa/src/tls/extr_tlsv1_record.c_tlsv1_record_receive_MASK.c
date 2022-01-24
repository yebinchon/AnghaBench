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
struct tlsv1_record_layer {scalar_t__ read_cipher_suite; size_t iv_size; scalar_t__ tls_version; size_t hash_size; int* read_seq_num; int /*<<< orphan*/  read_mac_secret; int /*<<< orphan*/  hash_alg; int /*<<< orphan*/  read_cbc; } ;
struct crypto_hash {int dummy; } ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int TLS_ALERT_BAD_RECORD_MAC ; 
 int TLS_ALERT_DECRYPTION_FAILED ; 
 int TLS_ALERT_INTERNAL_ERROR ; 
 int TLS_ALERT_PROTOCOL_VERSION ; 
 int TLS_ALERT_RECORD_OVERFLOW ; 
 int TLS_ALERT_UNEXPECTED_MESSAGE ; 
 int TLS_CONTENT_TYPE_ALERT ; 
 int TLS_CONTENT_TYPE_APPLICATION_DATA ; 
 int TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ; 
 int TLS_CONTENT_TYPE_HANDSHAKE ; 
 scalar_t__ TLS_NULL_WITH_NULL_NULL ; 
 size_t TLS_RECORD_HEADER_LEN ; 
 size_t TLS_SEQ_NUM_LEN ; 
 scalar_t__ TLS_VERSION_1_1 ; 
 size_t FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int const*,int*,size_t) ; 
 scalar_t__ FUNC3 (struct crypto_hash*,int*,size_t*) ; 
 struct crypto_hash* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_hash*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t) ; 
 scalar_t__ FUNC7 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC13(struct tlsv1_record_layer *rl,
			 const u8 *in_data, size_t in_len,
			 u8 *out_data, size_t *out_len, u8 *alert)
{
	size_t i, rlen, hlen;
	u8 padlen;
	struct crypto_hash *hmac;
	u8 len[2], hash[100];
	int force_mac_error = 0;
	u8 ct;

	if (in_len < TLS_RECORD_HEADER_LEN) {
		FUNC12(MSG_DEBUG, "TLSv1: Too short record (in_len=%lu) - "
			   "need more data",
			   (unsigned long) in_len);
		FUNC10(MSG_MSGDUMP, "TLSv1: Record Layer - Received",
			    in_data, in_len);
		return 0;
	}

	ct = in_data[0];
	rlen = FUNC0(in_data + 3);
	FUNC12(MSG_DEBUG, "TLSv1: Received content type %d version %d.%d "
		   "length %d", ct, in_data[1], in_data[2], (int) rlen);

	/*
	 * TLS v1.0 and v1.1 RFCs were not exactly clear on the use of the
	 * protocol version in record layer. As such, accept any {03,xx} value
	 * to remain compatible with existing implementations.
	 */
	if (in_data[1] != 0x03) {
		FUNC12(MSG_DEBUG, "TLSv1: Unexpected protocol version "
			   "%u.%u", in_data[1], in_data[2]);
		*alert = TLS_ALERT_PROTOCOL_VERSION;
		return -1;
	}

	/* TLSCiphertext must not be more than 2^14+2048 bytes */
	if (TLS_RECORD_HEADER_LEN + rlen > 18432) {
		FUNC12(MSG_DEBUG, "TLSv1: Record overflow (len=%lu)",
			   (unsigned long) (TLS_RECORD_HEADER_LEN + rlen));
		*alert = TLS_ALERT_RECORD_OVERFLOW;
		return -1;
	}

	in_data += TLS_RECORD_HEADER_LEN;
	in_len -= TLS_RECORD_HEADER_LEN;

	if (rlen > in_len) {
		FUNC12(MSG_DEBUG, "TLSv1: Not all record data included "
			   "(rlen=%lu > in_len=%lu)",
			   (unsigned long) rlen, (unsigned long) in_len);
		return 0;
	}

	FUNC10(MSG_MSGDUMP, "TLSv1: Record Layer - Received",
		    in_data, rlen);

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE &&
	    ct != TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC &&
	    ct != TLS_CONTENT_TYPE_ALERT &&
	    ct != TLS_CONTENT_TYPE_APPLICATION_DATA) {
		FUNC12(MSG_DEBUG, "TLSv1: Ignore record with unknown "
			   "content type 0x%x", ct);
		*alert = TLS_ALERT_UNEXPECTED_MESSAGE;
		return -1;
	}

	in_len = rlen;

	if (*out_len < in_len) {
		FUNC12(MSG_DEBUG, "TLSv1: Not enough output buffer for "
			   "processing received record");
		*alert = TLS_ALERT_INTERNAL_ERROR;
		return -1;
	}

	if (rl->read_cipher_suite != TLS_NULL_WITH_NULL_NULL) {
		size_t plen;
		if (FUNC2(rl->read_cbc, in_data,
					  out_data, in_len) < 0) {
			*alert = TLS_ALERT_DECRYPTION_FAILED;
			return -1;
		}
		plen = in_len;
		FUNC11(MSG_MSGDUMP, "TLSv1: Record Layer - Decrypted "
				"data", out_data, plen);

		if (rl->iv_size) {
			/*
			 * TLS v1.0 defines different alert values for various
			 * failures. That may information to aid in attacks, so
			 * use the same bad_record_mac alert regardless of the
			 * issues.
			 *
			 * In addition, instead of returning immediately on
			 * error, run through the MAC check to make timing
			 * attacks more difficult.
			 */

			if (rl->tls_version >= TLS_VERSION_1_1) {
				/* Remove opaque IV[Cipherspec.block_length] */
				if (plen < rl->iv_size) {
					FUNC12(MSG_DEBUG, "TLSv1.1: Not "
						   "enough room for IV");
					force_mac_error = 1;
					goto check_mac;
				}
				FUNC9(out_data, out_data + rl->iv_size,
					   plen - rl->iv_size);
				plen -= rl->iv_size;
			}

			/* Verify and remove padding */
			if (plen == 0) {
				FUNC12(MSG_DEBUG, "TLSv1: Too short record"
					   " (no pad)");
				force_mac_error = 1;
				goto check_mac;
			}
			padlen = out_data[plen - 1];
			if (padlen >= plen) {
				FUNC12(MSG_DEBUG, "TLSv1: Incorrect pad "
					   "length (%u, plen=%lu) in "
					   "received record",
					   padlen, (unsigned long) plen);
				force_mac_error = 1;
				goto check_mac;
			}
			for (i = plen - padlen - 1; i < plen - 1; i++) {
				if (out_data[i] != padlen) {
					FUNC10(MSG_DEBUG,
						    "TLSv1: Invalid pad in "
						    "received record",
						    out_data + plen - padlen -
						    1, padlen + 1);
					force_mac_error = 1;
					goto check_mac;
				}
			}

			plen -= padlen + 1;

			FUNC11(MSG_MSGDUMP, "TLSv1: Record Layer - "
					"Decrypted data with IV and padding "
					"removed", out_data, plen);
		}

	check_mac:
		if (plen < rl->hash_size) {
			FUNC12(MSG_DEBUG, "TLSv1: Too short record; no "
				   "hash value");
			*alert = TLS_ALERT_BAD_RECORD_MAC;
			return -1;
		}

		plen -= rl->hash_size;

		hmac = FUNC4(rl->hash_alg, rl->read_mac_secret,
					rl->hash_size);
		if (hmac == NULL) {
			FUNC12(MSG_DEBUG, "TLSv1: Record Layer - Failed "
				   "to initialize HMAC");
			*alert = TLS_ALERT_INTERNAL_ERROR;
			return -1;
		}

		FUNC5(hmac, rl->read_seq_num, TLS_SEQ_NUM_LEN);
		/* type + version + length + fragment */
		FUNC5(hmac, in_data - TLS_RECORD_HEADER_LEN, 3);
		FUNC1(len, plen);
		FUNC5(hmac, len, 2);
		FUNC5(hmac, out_data, plen);
		hlen = sizeof(hash);
		if (FUNC3(hmac, hash, &hlen) < 0) {
			FUNC12(MSG_DEBUG, "TLSv1: Record Layer - Failed "
				   "to calculate HMAC");
			*alert = TLS_ALERT_INTERNAL_ERROR;
			return -1;
		}
		if (hlen != rl->hash_size ||
		    FUNC7(hash, out_data + plen, hlen) != 0 ||
		    force_mac_error) {
			FUNC12(MSG_DEBUG, "TLSv1: Invalid HMAC value in "
				   "received message (force_mac_error=%d)",
				   force_mac_error);
			*alert = TLS_ALERT_BAD_RECORD_MAC;
			return -1;
		}

		*out_len = plen;
	} else {
		FUNC8(out_data, in_data, in_len);
		*out_len = in_len;
	}

	/* TLSCompressed must not be more than 2^14+1024 bytes */
	if (TLS_RECORD_HEADER_LEN + *out_len > 17408) {
		FUNC12(MSG_DEBUG, "TLSv1: Record overflow (len=%lu)",
			   (unsigned long) (TLS_RECORD_HEADER_LEN + *out_len));
		*alert = TLS_ALERT_RECORD_OVERFLOW;
		return -1;
	}

	FUNC6(rl->read_seq_num, TLS_SEQ_NUM_LEN);

	return TLS_RECORD_HEADER_LEN + rlen;
}