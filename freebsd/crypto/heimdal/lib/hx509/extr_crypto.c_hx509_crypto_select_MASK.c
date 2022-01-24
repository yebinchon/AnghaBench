#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct hx509cipher {TYPE_2__ const* (* ai_func ) () ;} ;
typedef  scalar_t__ hx509_private_key ;
typedef  TYPE_1__* hx509_peer_info ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_16__ {int flags; int /*<<< orphan*/ * key_oid; int /*<<< orphan*/  const* sig_oid; } ;
struct TYPE_15__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_14__ {size_t len; TYPE_2__ const* val; } ;
typedef  TYPE_2__ AlgorithmIdentifier ;

/* Variables and functions */
 int EINVAL ; 
 int HX509_SELECT_DIGEST ; 
 int HX509_SELECT_PUBLIC_SIG ; 
 int HX509_SELECT_SECRET_ENC ; 
 int SIG_DIGEST ; 
 int SIG_PUBLIC_SIG ; 
 int SIG_SECRET ; 
 TYPE_2__* _hx509_crypto_default_digest_alg ; 
 TYPE_2__* _hx509_crypto_default_secret_alg ; 
 TYPE_2__* _hx509_crypto_default_sig_alg ; 
 TYPE_2__* FUNC0 (scalar_t__ const,int) ; 
 int FUNC1 (TYPE_2__ const*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 struct hx509cipher* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__** sig_algs ; 
 TYPE_2__ const* FUNC8 () ; 

int
FUNC9(const hx509_context context,
		    int type,
		    const hx509_private_key source,
		    hx509_peer_info peer,
		    AlgorithmIdentifier *selected)
{
    const AlgorithmIdentifier *def = NULL;
    size_t i, j;
    int ret, bits;

    FUNC7(selected, 0, sizeof(*selected));

    if (type == HX509_SELECT_DIGEST) {
	bits = SIG_DIGEST;
	if (source)
	    def = FUNC0(source, type);
	if (def == NULL)
	    def = _hx509_crypto_default_digest_alg;
    } else if (type == HX509_SELECT_PUBLIC_SIG) {
	bits = SIG_PUBLIC_SIG;
	/* XXX depend on `source´ and `peer´ */
	if (source)
	    def = FUNC0(source, type);
	if (def == NULL)
	    def = _hx509_crypto_default_sig_alg;
    } else if (type == HX509_SELECT_SECRET_ENC) {
	bits = SIG_SECRET;
	def = _hx509_crypto_default_secret_alg;
    } else {
	FUNC6(context, 0, EINVAL,
			       "Unknown type %d of selection", type);
	return EINVAL;
    }

    if (peer) {
	const heim_oid *keytype = NULL;

	keytype = FUNC4(source);

	for (i = 0; i < peer->len; i++) {
	    for (j = 0; sig_algs[j]; j++) {
		if ((sig_algs[j]->flags & bits) != bits)
		    continue;
		if (FUNC2(sig_algs[j]->sig_oid,
				     &peer->val[i].algorithm) != 0)
		    continue;
		if (keytype && sig_algs[j]->key_oid &&
		    FUNC2(keytype, sig_algs[j]->key_oid))
		    continue;

		/* found one, use that */
		ret = FUNC1(&peer->val[i], selected);
		if (ret)
		    FUNC5(context);
		return ret;
	    }
	    if (bits & SIG_SECRET) {
		const struct hx509cipher *cipher;

		cipher = FUNC3(&peer->val[i].algorithm);
		if (cipher == NULL)
		    continue;
		if (cipher->ai_func == NULL)
		    continue;
		ret = FUNC1(cipher->ai_func(), selected);
		if (ret)
		    FUNC5(context);
		return ret;
	    }
	}
    }

    /* use default */
    ret = FUNC1(def, selected);
    if (ret)
	FUNC5(context);
    return ret;
}