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
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_3__ {void* data; size_t length; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void const*,void const*,size_t,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int HX509_CRYPTO_INTERNAL_ERROR ; 
 int FUNC7 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC13(hx509_context context,
	    struct hx509_collector *collector,
	    const AlgorithmIdentifier *alg,
	    const EVP_CIPHER *c,
	    const void *ivdata,
	    const void *password,
	    size_t passwordlen,
	    const void *cipher,
	    size_t len)
{
    heim_octet_string clear;
    size_t keylen;
    void *key;
    int ret;

    keylen = FUNC3(c);

    key = FUNC11(keylen);
    if (key == NULL) {
	FUNC9(context);
	return ENOMEM;
    }

    ret = FUNC0(c, FUNC6(), ivdata,
			 password, passwordlen,
			 1, key, NULL);
    if (ret <= 0) {
	FUNC10(context, 0, HX509_CRYPTO_INTERNAL_ERROR,
			       "Failed to do string2key for private key");
	return HX509_CRYPTO_INTERNAL_ERROR;
    }

    clear.data = FUNC11(len);
    if (clear.data == NULL) {
	FUNC10(context, 0, ENOMEM,
			       "Out of memory to decrypt for private key");
	ret = ENOMEM;
	goto out;
    }
    clear.length = len;

    {
	EVP_CIPHER_CTX *ctx;

	ctx = FUNC2();
	if (ctx == NULL) {
		FUNC10(context, 0, ENOMEM,
				       "Out of memory to decrypt for private key");
		ret = ENOMEM;
		goto out;
	}
	FUNC5(ctx, c, NULL, key, ivdata, 0);
	FUNC4(ctx, clear.data, cipher, len);
	FUNC1(ctx);
    }

    ret = FUNC7(context,
					   collector,
					   alg,
					   NULL,
					   &clear,
					   NULL);

    FUNC12(clear.data, 0, clear.length);
out:
    FUNC8(clear.data);
    FUNC12(key, 0, keylen);
    FUNC8(key);
    return ret;
}