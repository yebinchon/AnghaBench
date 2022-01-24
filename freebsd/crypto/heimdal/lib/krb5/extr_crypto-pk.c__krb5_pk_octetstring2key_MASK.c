#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _krb5_encryption_type {TYPE_1__* keytype; } ;
typedef  int /*<<< orphan*/  shaoutput ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  keylen ;
struct TYPE_6__ {void const* data; size_t length; } ;
typedef  TYPE_2__ heim_octet_string ;
struct TYPE_5__ {int bits; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  KRB5_PROG_ETYPE_NOSUPP ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int SHA_DIGEST_LENGTH ; 
 struct _krb5_encryption_type* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (size_t,int) ; 

krb5_error_code
FUNC15(krb5_context context,
			 krb5_enctype type,
			 const void *dhdata,
			 size_t dhsize,
			 const heim_octet_string *c_n,
			 const heim_octet_string *k_n,
			 krb5_keyblock *key)
{
    struct _krb5_encryption_type *et = FUNC7(type);
    krb5_error_code ret;
    size_t keylen, offset;
    void *keydata;
    unsigned char counter;
    unsigned char shaoutput[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *m;

    if(et == NULL) {
	FUNC10(context, KRB5_PROG_ETYPE_NOSUPP,
			       FUNC6("encryption type %d not supported", ""),
			       type);
	return KRB5_PROG_ETYPE_NOSUPP;
    }
    keylen = (et->keytype->bits + 7) / 8;

    keydata = FUNC11(keylen);
    if (keydata == NULL) {
	FUNC10(context, ENOMEM, FUNC6("malloc: out of memory", ""));
	return ENOMEM;
    }

    m = FUNC3();
    if (m == NULL) {
	FUNC8(keydata);
	FUNC10(context, ENOMEM, FUNC6("malloc: out of memory", ""));
	return ENOMEM;
    }

    counter = 0;
    offset = 0;
    do {

	FUNC1(m, FUNC5(), NULL);
	FUNC2(m, &counter, 1);
	FUNC2(m, dhdata, dhsize);

	if (c_n)
	    FUNC2(m, c_n->data, c_n->length);
	if (k_n)
	    FUNC2(m, k_n->data, k_n->length);

	FUNC0(m, shaoutput, NULL);

	FUNC12((unsigned char *)keydata + offset,
	       shaoutput,
	       FUNC14(keylen - offset, sizeof(shaoutput)));

	offset += sizeof(shaoutput);
	counter++;
    } while(offset < keylen);
    FUNC13(shaoutput, 0, sizeof(shaoutput));

    FUNC4(m);

    ret = FUNC9(context, type, keydata, keylen, key);
    FUNC13(keydata, 0, sizeof(keylen));
    FUNC8(keydata);
    return ret;
}