#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct signature_alg {int /*<<< orphan*/  name; int /*<<< orphan*/  (* evp_md ) () ;} ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  Certificate ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int HX509_CRYPTO_BAD_SIGNATURE ; 
 int HX509_CRYPTO_SIG_INVALID_FORMAT ; 
 scalar_t__ FUNC6 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(hx509_context context,
			const struct signature_alg *sig_alg,
			const Certificate *signer,
			const AlgorithmIdentifier *alg,
			const heim_octet_string *data,
			const heim_octet_string *sig)
{
    unsigned char digest[EVP_MAX_MD_SIZE];
    EVP_MD_CTX *ctx;
    size_t sigsize = FUNC5(sig_alg->evp_md());

    if (sig->length != sigsize || sigsize > sizeof(digest)) {
	FUNC7(context, 0, HX509_CRYPTO_SIG_INVALID_FORMAT,
			       "SHA256 sigature have wrong length");
	return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }

    ctx = FUNC3();
    FUNC1(ctx, sig_alg->evp_md(), NULL);
    FUNC2(ctx, data->data, data->length);
    FUNC0(ctx, digest, NULL);
    FUNC4(ctx);

    if (FUNC6(digest, sig->data, sigsize) != 0) {
	FUNC7(context, 0, HX509_CRYPTO_BAD_SIGNATURE,
			       "Bad %s sigature", sig_alg->name);
	return HX509_CRYPTO_BAD_SIGNATURE;
    }

    return 0;
}