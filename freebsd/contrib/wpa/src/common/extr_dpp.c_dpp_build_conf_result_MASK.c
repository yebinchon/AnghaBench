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
struct wpabuf {int dummy; } ;
struct dpp_authentication {TYPE_1__* curve; int /*<<< orphan*/  ke; int /*<<< orphan*/  e_nonce; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {size_t nonce_len; int /*<<< orphan*/  hash_len; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int DPP_ATTR_ENROLLEE_NONCE ; 
 int DPP_ATTR_WRAPPED_DATA ; 
 int /*<<< orphan*/  DPP_PA_CONFIGURATION_RESULT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 struct wpabuf* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC8 (struct wpabuf*) ; 
 int FUNC9 (struct wpabuf*) ; 
 void* FUNC10 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int) ; 

struct wpabuf * FUNC13(struct dpp_authentication *auth,
				      enum dpp_status_error status)
{
	struct wpabuf *msg, *clear;
	size_t nonce_len, clear_len, attr_len;
	const u8 *addr[2];
	size_t len[2];
	u8 *wrapped;

	nonce_len = auth->curve->nonce_len;
	clear_len = 5 + 4 + nonce_len;
	attr_len = 4 + clear_len + AES_BLOCK_SIZE;
	clear = FUNC5(clear_len);
	msg = FUNC1(DPP_PA_CONFIGURATION_RESULT, attr_len);
	if (!clear || !msg)
		return NULL;

	/* DPP Status */
	FUNC2(clear, status);

	/* E-nonce */
	FUNC12(clear, DPP_ATTR_ENROLLEE_NONCE);
	FUNC12(clear, nonce_len);
	FUNC11(clear, auth->e_nonce, nonce_len);

	/* OUI, OUI type, Crypto Suite, DPP frame type */
	addr[0] = FUNC8(msg) + 2;
	len[0] = 3 + 1 + 1 + 1;
	FUNC3(MSG_DEBUG, "DDP: AES-SIV AD[0]", addr[0], len[0]);

	/* Attributes before Wrapped Data (none) */
	addr[1] = FUNC10(msg, 0);
	len[1] = 0;
	FUNC3(MSG_DEBUG, "DDP: AES-SIV AD[1]", addr[1], len[1]);

	/* Wrapped Data */
	FUNC12(msg, DPP_ATTR_WRAPPED_DATA);
	FUNC12(msg, FUNC9(clear) + AES_BLOCK_SIZE);
	wrapped = FUNC10(msg, FUNC9(clear) + AES_BLOCK_SIZE);

	FUNC4(MSG_DEBUG, "DPP: AES-SIV cleartext", clear);
	if (FUNC0(auth->ke, auth->curve->hash_len,
			    FUNC7(clear), FUNC9(clear),
			    2, addr, len, wrapped) < 0)
		goto fail;

	FUNC4(MSG_DEBUG, "DPP: Configuration Result attributes", msg);
	FUNC6(clear);
	return msg;
fail:
	FUNC6(clear);
	FUNC6(msg);
	return NULL;
}