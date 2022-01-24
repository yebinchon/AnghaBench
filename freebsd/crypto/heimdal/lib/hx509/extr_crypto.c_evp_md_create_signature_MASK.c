#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct signature_alg {int /*<<< orphan*/  (* evp_md ) () ;int /*<<< orphan*/  sig_oid; } ;
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(hx509_context context,
			const struct signature_alg *sig_alg,
			const hx509_private_key signer,
			const AlgorithmIdentifier *alg,
			const heim_octet_string *data,
			AlgorithmIdentifier *signatureAlgorithm,
			heim_octet_string *sig)
{
    size_t sigsize = FUNC5(sig_alg->evp_md());
    EVP_MD_CTX *ctx;

    FUNC7(sig, 0, sizeof(*sig));

    if (signatureAlgorithm) {
	int ret;
	ret = FUNC8(signatureAlgorithm, sig_alg->sig_oid,
			     "\x05\x00", 2);
	if (ret)
	    return ret;
    }


    sig->data = FUNC6(sigsize);
    if (sig->data == NULL) {
	sig->length = 0;
	return ENOMEM;
    }
    sig->length = sigsize;

    ctx = FUNC3();
    FUNC1(ctx, sig_alg->evp_md(), NULL);
    FUNC2(ctx, data->data, data->length);
    FUNC0(ctx, sig->data, NULL);
    FUNC4(ctx);


    return 0;
}