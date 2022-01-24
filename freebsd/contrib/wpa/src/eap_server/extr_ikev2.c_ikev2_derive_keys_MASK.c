#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct ikev2_prf_alg {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  id; } ;
struct ikev2_integ_alg {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  encr; int /*<<< orphan*/  prf; int /*<<< orphan*/  integ; } ;
struct ikev2_initiator_data {int i_nonce_len; int r_nonce_len; int /*<<< orphan*/  keys; struct wpabuf* i_dh_private; struct wpabuf* r_dh_public; TYPE_2__* dh; int /*<<< orphan*/  r_spi; int /*<<< orphan*/  i_spi; int /*<<< orphan*/  r_nonce; int /*<<< orphan*/  i_nonce; TYPE_1__ proposal; } ;
struct ikev2_encr_alg {int dummy; } ;
struct TYPE_4__ {size_t prime_len; } ;

/* Variables and functions */
 int IKEV2_MAX_HASH_LEN ; 
 int IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (struct wpabuf*,struct wpabuf*,TYPE_2__*) ; 
 int FUNC1 (struct ikev2_prf_alg const*,struct ikev2_integ_alg const*,struct ikev2_encr_alg const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 struct ikev2_encr_alg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ikev2_integ_alg* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ikev2_prf_alg* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC13 (struct wpabuf*) ; 
 size_t FUNC14 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC15(struct ikev2_initiator_data *data)
{
	u8 *buf, *pos, *pad, skeyseed[IKEV2_MAX_HASH_LEN];
	size_t buf_len, pad_len;
	struct wpabuf *shared;
	const struct ikev2_integ_alg *integ;
	const struct ikev2_prf_alg *prf;
	const struct ikev2_encr_alg *encr;
	int ret;
	const u8 *addr[2];
	size_t len[2];

	/* RFC 4306, Sect. 2.14 */

	integ = FUNC3(data->proposal.integ);
	prf = FUNC4(data->proposal.prf);
	encr = FUNC2(data->proposal.encr);
	if (integ == NULL || prf == NULL || encr == NULL) {
		FUNC11(MSG_INFO, "IKEV2: Unsupported proposal");
		return -1;
	}

	shared = FUNC0(data->r_dh_public, data->i_dh_private,
				  data->dh);
	if (shared == NULL)
		return -1;

	/* Construct Ni | Nr | SPIi | SPIr */

	buf_len = data->i_nonce_len + data->r_nonce_len + 2 * IKEV2_SPI_LEN;
	buf = FUNC7(buf_len);
	if (buf == NULL) {
		FUNC12(shared);
		return -1;
	}

	pos = buf;
	FUNC8(pos, data->i_nonce, data->i_nonce_len);
	pos += data->i_nonce_len;
	FUNC8(pos, data->r_nonce, data->r_nonce_len);
	pos += data->r_nonce_len;
	FUNC8(pos, data->i_spi, IKEV2_SPI_LEN);
	pos += IKEV2_SPI_LEN;
	FUNC8(pos, data->r_spi, IKEV2_SPI_LEN);

	/* SKEYSEED = prf(Ni | Nr, g^ir) */

	/* Use zero-padding per RFC 4306, Sect. 2.14 */
	pad_len = data->dh->prime_len - FUNC14(shared);
	pad = FUNC9(pad_len ? pad_len : 1);
	if (pad == NULL) {
		FUNC12(shared);
		FUNC6(buf);
		return -1;
	}
	addr[0] = pad;
	len[0] = pad_len;
	addr[1] = FUNC13(shared);
	len[1] = FUNC14(shared);
	if (FUNC5(prf->id, buf, data->i_nonce_len + data->r_nonce_len,
			   2, addr, len, skeyseed) < 0) {
		FUNC12(shared);
		FUNC6(buf);
		FUNC6(pad);
		return -1;
	}
	FUNC6(pad);
	FUNC12(shared);

	/* DH parameters are not needed anymore, so free them */
	FUNC12(data->r_dh_public);
	data->r_dh_public = NULL;
	FUNC12(data->i_dh_private);
	data->i_dh_private = NULL;

	FUNC10(MSG_DEBUG, "IKEV2: SKEYSEED",
			skeyseed, prf->hash_len);

	ret = FUNC1(prf, integ, encr, skeyseed, buf, buf_len,
				   &data->keys);
	FUNC6(buf);
	return ret;
}