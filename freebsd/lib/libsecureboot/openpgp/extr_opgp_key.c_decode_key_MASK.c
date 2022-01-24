#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mdata ;
typedef  int /*<<< orphan*/  br_sha1_context ;
struct TYPE_14__ {int /*<<< orphan*/  elen; void* e; int /*<<< orphan*/  nlen; void* n; } ;
struct TYPE_13__ {int sig_alg; TYPE_3__* key; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {void* e; void* n; } ;
typedef  TYPE_1__ RSA ;
typedef  TYPE_2__ OpenPGP_key ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  br_rsa_public_key ; 
 unsigned int br_sha1_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int br_sha512_SIZE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 void* FUNC14 (unsigned char**,...) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int) ; 

ssize_t
FUNC16(int tag, unsigned char **pptr, size_t len, OpenPGP_key *key)
{
	unsigned char *ptr;
	int version;
#ifdef USE_BEARSSL
	br_sha1_context mctx;
	unsigned char mdata[br_sha512_SIZE];
	size_t mlen;
#else
	RSA *rsa = NULL;
	const EVP_MD *md = NULL;
	EVP_MD_CTX mctx;
	unsigned char mdata[EVP_MAX_MD_SIZE];
	unsigned int mlen;
#endif
    
	if (tag != 6)
		return (-1);

	key->key = NULL;
	ptr = *pptr;
	version = *ptr;
	if (version == 4) {		/* all we support really */
		/* comput key fingerprint and id @sa rfc4880:12.2 */
		mdata[0] = 0x99;	/* rfc4880: 12.2.a.1 */
		mdata[1] = (len >> 8) & 0xff;
		mdata[2] = len & 0xff;
	
#ifdef USE_BEARSSL
		br_sha1_init(&mctx);
		br_sha1_update(&mctx, mdata, 3);
		br_sha1_update(&mctx, ptr, len);
		br_sha1_out(&mctx, mdata);
		mlen = br_sha1_SIZE;
#else
		md = FUNC6("sha1");
		FUNC1(&mctx, md);
		FUNC2(&mctx, mdata, 3);
		FUNC2(&mctx, ptr, len);
		mlen = (unsigned int)sizeof(mdata);
		FUNC0(&mctx, mdata, &mlen);
#endif
		key->id = FUNC15(&mdata[mlen - 8], 8);
	}
	ptr += 1;			/* done with version */
	ptr += 4;			/* skip ctime */
	if (version == 3)
		ptr += 2;		/* valid days */
	key->sig_alg = *ptr++;
	if (key->sig_alg == 1) {	/* RSA */
#ifdef USE_BEARSSL
		key->key = NEW(br_rsa_public_key);
		if (!key->key)
			goto oops;
		key->key->n = mpi2bn(&ptr, &key->key->nlen);
		key->key->e = mpi2bn(&ptr, &key->key->elen);
#else
		rsa = FUNC9();
		if (!rsa)
			goto oops;
		rsa->n = FUNC14(&ptr);
		rsa->e = FUNC14(&ptr);
		key->key = FUNC4();
		if (!key->key || !rsa->n || !rsa->e) {
			goto oops;
		}
		if (!FUNC5(key->key, rsa))
			goto oops;
#endif
	}
	/* we are done */
	return ((ssize_t)len);
oops:
#ifdef USE_BEARSSL
	free(key->key);
	key->key = NULL;
#else
	if (rsa)
		FUNC8(rsa);
	if (key->key) {
		FUNC3(key->key);
		key->key = NULL;
	}
#endif
	return (-1);
}