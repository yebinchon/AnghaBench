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
struct rad_server {unsigned char* secret; } ;
struct rad_handle {int pass_len; unsigned char* out; int pass_pos; unsigned char* pass; struct rad_server* servers; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  LEN_AUTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int MD5_DIGEST_LENGTH ; 
 size_t POS_AUTH ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned char*) ; 

__attribute__((used)) static void
FUNC5(struct rad_handle *h, int srv)
{
	MD5_CTX ctx;
	unsigned char md5[MD5_DIGEST_LENGTH];
	const struct rad_server *srvp;
	int padded_len;
	int pos;

	srvp = &h->servers[srv];
	padded_len = h->pass_len == 0 ? 16 : (h->pass_len+15) & ~0xf;

	FUNC3(md5, &h->out[POS_AUTH], LEN_AUTH);
	for (pos = 0;  pos < padded_len;  pos += 16) {
		int i;

		/* Calculate the new scrambler */
		FUNC1(&ctx);
		FUNC2(&ctx, srvp->secret, FUNC4(srvp->secret));
		FUNC2(&ctx, md5, 16);
		FUNC0(md5, &ctx);

		/*
		 * Mix in the current chunk of the password, and copy
		 * the result into the right place in the request.  Also
		 * modify the scrambler in place, since we will use this
		 * in calculating the scrambler for next time.
		 */
		for (i = 0;  i < 16;  i++)
			h->out[h->pass_pos + pos + i] =
			    md5[i] ^= h->pass[pos + i];
	}
}