#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _krb5_key_type {int bits; int type; } ;
struct _krb5_key_data {int /*<<< orphan*/ * schedule; TYPE_2__* key; } ;
struct _krb5_encryption_type {int blocksize; int /*<<< orphan*/  (* encrypt ) (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;struct _krb5_key_type* keytype; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_3__ {unsigned char* data; unsigned int length; } ;
struct TYPE_4__ {TYPE_1__ keyvalue; } ;

/* Variables and functions */
#define  ENCTYPE_AES128_CTS_HMAC_SHA1_96 130 
#define  ENCTYPE_AES256_CTS_HMAC_SHA1_96 129 
 scalar_t__ ENOMEM ; 
#define  ETYPE_OLD_DES3_CBC_SHA1 128 
 scalar_t__ KRB5_CRYPTO_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct _krb5_key_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC3 (void*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct _krb5_key_data*,struct _krb5_encryption_type*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

krb5_error_code
FUNC12(krb5_context context,
		 struct _krb5_encryption_type *et,
		 struct _krb5_key_data *key,
		 const void *constant,
		 size_t len)
{
    unsigned char *k = NULL;
    unsigned int nblocks = 0, i;
    krb5_error_code ret = 0;
    struct _krb5_key_type *kt = et->keytype;

    ret = FUNC1(context, key);
    if(ret)
	return ret;
    if(et->blocksize * 8 < kt->bits || len != et->blocksize) {
	nblocks = (kt->bits + et->blocksize * 8 - 1) / (et->blocksize * 8);
	k = FUNC7(nblocks * et->blocksize);
	if(k == NULL) {
	    ret = ENOMEM;
	    FUNC6(context, ret, FUNC0("malloc: out of memory", ""));
	    goto out;
	}
	ret = FUNC3(constant, len, k, et->blocksize);
	if (ret) {
	    FUNC6(context, ret, FUNC0("malloc: out of memory", ""));
	    goto out;
	}

	for(i = 0; i < nblocks; i++) {
	    if(i > 0)
		FUNC8(k + i * et->blocksize,
		       k + (i - 1) * et->blocksize,
		       et->blocksize);
	    (*et->encrypt)(context, key, k + i * et->blocksize, et->blocksize,
			   1, 0, NULL);
	}
    } else {
	/* this case is probably broken, but won't be run anyway */
	void *c = FUNC7(len);
	size_t res_len = (kt->bits + 7) / 8;

	if(len != 0 && c == NULL) {
	    ret = ENOMEM;
	    FUNC6(context, ret, FUNC0("malloc: out of memory", ""));
	    goto out;
	}
	FUNC8(c, constant, len);
	(*et->encrypt)(context, key, c, len, 1, 0, NULL);
	k = FUNC7(res_len);
	if(res_len != 0 && k == NULL) {
	    FUNC4(c);
	    ret = ENOMEM;
	    FUNC6(context, ret, FUNC0("malloc: out of memory", ""));
	    goto out;
	}
	ret = FUNC3(c, len, k, res_len);
	FUNC4(c);
	if (ret) {
	    FUNC6(context, ret, FUNC0("malloc: out of memory", ""));
	    goto out;
	}
    }

    /* XXX keytype dependent post-processing */
    switch(kt->type) {
    case ETYPE_OLD_DES3_CBC_SHA1:
	FUNC2(context, key->key, k, nblocks * et->blocksize);
	break;
    case ENCTYPE_AES128_CTS_HMAC_SHA1_96:
    case ENCTYPE_AES256_CTS_HMAC_SHA1_96:
	FUNC8(key->key->keyvalue.data, k, key->key->keyvalue.length);
	break;
    default:
	ret = KRB5_CRYPTO_INTERNAL;
	FUNC6(context, ret,
			       FUNC0("derive_key() called with unknown keytype (%u)", ""),
			       kt->type);
	break;
    }
 out:
    if (key->schedule) {
	FUNC5(context, key, et);
	key->schedule = NULL;
    }
    if (k) {
	FUNC9(k, 0, nblocks * et->blocksize);
	FUNC4(k);
    }
    return ret;
}