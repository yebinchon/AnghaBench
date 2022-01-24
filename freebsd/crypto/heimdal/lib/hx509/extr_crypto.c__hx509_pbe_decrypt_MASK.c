#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct _hx509_password {int len; char** val; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  iv ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_crypto ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_16__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ heim_octet_string ;
struct TYPE_17__ {int /*<<< orphan*/  parameters; int /*<<< orphan*/  algorithm; } ;
typedef  int (* PBE_string2key_func ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  TYPE_4__ AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int HX509_ALG_NOT_SUPP ; 
 int HX509_CRYPTO_INTERNAL_ERROR ; 
 struct _hx509_password* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int (*) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int
FUNC12(hx509_context context,
		   hx509_lock lock,
		   const AlgorithmIdentifier *ai,
		   const heim_octet_string *econtent,
		   heim_octet_string *content)
{
    const struct _hx509_password *pw;
    heim_octet_string key, iv;
    const heim_oid *enc_oid;
    const EVP_CIPHER *c;
    const EVP_MD *md;
    PBE_string2key_func s2k;
    int ret = 0;
    size_t i;

    FUNC10(&key, 0, sizeof(key));
    FUNC10(&iv, 0, sizeof(iv));

    FUNC10(content, 0, sizeof(*content));

    enc_oid = FUNC4(&ai->algorithm, &c, &md, s2k);
    if (enc_oid == NULL) {
	FUNC8(context, 0, HX509_ALG_NOT_SUPP,
			       "String to key algorithm not supported");
	ret = HX509_ALG_NOT_SUPP;
	goto out;
    }

    key.length = FUNC1(c);
    key.data = FUNC9(key.length);
    if (key.data == NULL) {
	ret = ENOMEM;
	FUNC5(context);
	goto out;
    }

    iv.length = FUNC0(c);
    iv.data = FUNC9(iv.length);
    if (iv.data == NULL) {
	ret = ENOMEM;
	FUNC5(context);
	goto out;
    }

    pw = FUNC2(lock);

    ret = HX509_CRYPTO_INTERNAL_ERROR;
    for (i = 0; i < pw->len + 1; i++) {
	hx509_crypto crypto;
	const char *password;

	if (i < pw->len)
	    password = pw->val[i];
	else if (i < pw->len + 1)
	    password = "";
	else
	    password = NULL;

	ret = (*s2k)(context, password, ai->parameters, &crypto,
		     &key, &iv, enc_oid, md);
	if (ret)
	    goto out;

	ret = FUNC6(crypto,
				   econtent->data,
				   econtent->length,
				   &iv,
				   content);
	FUNC7(crypto);
	if (ret == 0)
	    goto out;

    }
out:
    if (key.data)
	FUNC3(&key);
    if (iv.data)
	FUNC3(&iv);
    return ret;
}