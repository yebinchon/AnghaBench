#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  digest; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8 (EVP_PKEY *pkey,
    const char *digest,
    unsigned char *mdata, size_t mlen,
    unsigned char *sdata, size_t slen)
{
	EVP_MD_CTX ctx;
	const EVP_MD *md = NULL;
	EVP_PKEY_CTX *pctx = NULL;
	int rc = 0;
	int i = -1;

	FUNC7();
	md = FUNC6(digest);
	FUNC0(&ctx, md);

	pctx = FUNC2(pkey, NULL);
	if (!pctx)
		goto fail;
	if (FUNC5(pctx) <= 0)
		goto fail;
	if (FUNC3(pctx, ctx.digest) <= 0)
		goto fail;
	i = FUNC4(pctx, sdata, slen, mdata, mlen);
	if (i >= 0)
		rc = i;
fail:
	FUNC1(pctx);
	return (rc);
}