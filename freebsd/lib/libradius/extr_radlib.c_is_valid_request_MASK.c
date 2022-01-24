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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct rad_server {int* secret; } ;
struct rad_handle {size_t srv; size_t in_len; int* in; struct rad_server* servers; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int LEN_AUTH ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int MD5_DIGEST_LENGTH ; 
 int MSGSIZE ; 
 size_t POS_ATTRS ; 
 size_t POS_AUTH ; 
 size_t POS_CODE ; 
 size_t POS_LENGTH ; 
 int RAD_ACCESS_REQUEST ; 
 scalar_t__ RAD_MESSAGE_AUTHENTIC ; 
 scalar_t__ FUNC10 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int*) ; 

__attribute__((used)) static int
FUNC14(struct rad_handle *h)
{
	MD5_CTX ctx;
	unsigned char md5[MD5_DIGEST_LENGTH];
	const struct rad_server *srvp;
	int len;
#ifdef WITH_SSL
	HMAC_CTX *hctx;
	u_char resp[MSGSIZE], md[EVP_MAX_MD_SIZE];
	u_int md_len;
	int pos;
#endif

	srvp = &h->servers[h->srv];

	/* Check the message length */
	if (h->in_len < POS_ATTRS)
		return (0);
	len = h->in[POS_LENGTH] << 8 | h->in[POS_LENGTH+1];
	if (len > h->in_len)
		return (0);

	if (h->in[POS_CODE] != RAD_ACCESS_REQUEST) {
		uint32_t zeroes[4] = { 0, 0, 0, 0 };
		/* Check the request authenticator */
		FUNC8(&ctx);
		FUNC9(&ctx, &h->in[POS_CODE], POS_AUTH - POS_CODE);
		FUNC9(&ctx, zeroes, LEN_AUTH);
		FUNC9(&ctx, &h->in[POS_ATTRS], len - POS_ATTRS);
		FUNC9(&ctx, srvp->secret, FUNC13(srvp->secret));
		FUNC7(md5, &ctx);
		if (FUNC10(&h->in[POS_AUTH], md5, sizeof md5) != 0)
			return (0);
	}

#ifdef WITH_SSL
	/* Search and verify the Message-Authenticator */
	pos = POS_ATTRS;
	hctx = HMAC_CTX_new();
	while (pos < len - 2) {
		if (h->in[pos] == RAD_MESSAGE_AUTHENTIC) {
			memcpy(resp, h->in, MSGSIZE);
			/* zero fill the Request-Authenticator */
			if (h->in[POS_CODE] != RAD_ACCESS_REQUEST)
				memset(&resp[POS_AUTH], 0, LEN_AUTH);
			/* zero fill the Message-Authenticator */
			memset(&resp[pos + 2], 0, MD5_DIGEST_LENGTH);

			HMAC_Init_ex(hctx, srvp->secret,
			    strlen(srvp->secret), EVP_md5(), NULL);
			HMAC_Update(hctx, resp, h->in_len);
			HMAC_Final(hctx, md, &md_len);
			HMAC_CTX_reset(hctx);
			if (memcmp(md, &h->in[pos + 2],
			    MD5_DIGEST_LENGTH) != 0) {
				HMAC_CTX_free(hctx);
				return (0);
			}
			break;
		}
		pos += h->in[pos + 1];
	}
	HMAC_CTX_free(hctx);
#endif
	return (1);
}