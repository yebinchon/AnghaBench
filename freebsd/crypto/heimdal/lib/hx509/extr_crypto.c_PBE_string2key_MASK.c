#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_crypto ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ heim_octet_string ;
struct TYPE_9__ {unsigned char* data; int length; } ;
struct TYPE_11__ {int* iterations; TYPE_1__ salt; } ;
typedef  TYPE_3__ PKCS12_PBEParams ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int HX509_ALG_NOT_SUPP ; 
 int HX509_CRYPTO_INTERNAL_ERROR ; 
 int /*<<< orphan*/  PKCS12_IV_ID ; 
 int /*<<< orphan*/  PKCS12_KEY_ID ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,unsigned char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(hx509_context context,
	       const char *password,
	       const heim_octet_string *parameters,
	       hx509_crypto *crypto,
	       heim_octet_string *key, heim_octet_string *iv,
	       const heim_oid *enc_oid,
	       const EVP_MD *md)
{
    PKCS12_PBEParams p12params;
    int passwordlen;
    hx509_crypto c;
    int iter, saltlen, ret;
    unsigned char *salt;

    passwordlen = password ? FUNC7(password) : 0;

    if (parameters == NULL)
 	return HX509_ALG_NOT_SUPP;

    ret = FUNC1(parameters->data,
				  parameters->length,
				  &p12params, NULL);
    if (ret)
	goto out;

    if (p12params.iterations)
	iter = *p12params.iterations;
    else
	iter = 1;
    salt = p12params.salt.data;
    saltlen = p12params.salt.length;

    if (!FUNC0 (password, passwordlen, salt, saltlen,
			 PKCS12_KEY_ID, iter, key->length, key->data, md)) {
	ret = HX509_CRYPTO_INTERNAL_ERROR;
	goto out;
    }

    if (!FUNC0 (password, passwordlen, salt, saltlen,
			 PKCS12_IV_ID, iter, iv->length, iv->data, md)) {
	ret = HX509_CRYPTO_INTERNAL_ERROR;
	goto out;
    }

    ret = FUNC5(context, NULL, enc_oid, &c);
    if (ret)
	goto out;

    FUNC3(c);

    ret = FUNC6(c, key->data, key->length);
    if (ret) {
	FUNC4(c);
	goto out;
    }

    *crypto = c;
out:
    FUNC2(&p12params);
    return ret;
}