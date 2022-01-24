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
struct TYPE_3__ {int /*<<< orphan*/  const* g; int /*<<< orphan*/  const* q; int /*<<< orphan*/  const* p; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/ * priv_key; } ;
typedef  TYPE_1__ DSA ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(BIO *bp, const DSA *x, int off, int ptype)
{
    int ret = 0;
    const char *ktype = NULL;
    const BIGNUM *priv_key, *pub_key;

    if (ptype == 2)
        priv_key = x->priv_key;
    else
        priv_key = NULL;

    if (ptype > 0)
        pub_key = x->pub_key;
    else
        pub_key = NULL;

    if (ptype == 2)
        ktype = "Private-Key";
    else if (ptype == 1)
        ktype = "Public-Key";
    else
        ktype = "DSA-Parameters";

    if (priv_key) {
        if (!FUNC1(bp, off, 128))
            goto err;
        if (FUNC2(bp, "%s: (%d bit)\n", ktype, FUNC3(x->p))
            <= 0)
            goto err;
    }

    if (!FUNC0(bp, "priv:", priv_key, NULL, off))
        goto err;
    if (!FUNC0(bp, "pub: ", pub_key, NULL, off))
        goto err;
    if (!FUNC0(bp, "P:   ", x->p, NULL, off))
        goto err;
    if (!FUNC0(bp, "Q:   ", x->q, NULL, off))
        goto err;
    if (!FUNC0(bp, "G:   ", x->g, NULL, off))
        goto err;
    ret = 1;
 err:
    return ret;
}