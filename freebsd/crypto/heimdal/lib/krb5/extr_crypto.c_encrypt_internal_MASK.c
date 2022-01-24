#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; scalar_t__ (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  checksum; } ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_11__ {unsigned char* data; size_t length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  TYPE_3__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {size_t length; void const* data; } ;
struct TYPE_13__ {TYPE_1__ checksum; } ;
struct TYPE_12__ {int /*<<< orphan*/  key; struct _krb5_encryption_type* et; } ;
typedef  TYPE_4__ Checksum ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ KRB5_CRYPTO_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static krb5_error_code
FUNC13(krb5_context context,
		 krb5_crypto crypto,
		 const void *data,
		 size_t len,
		 krb5_data *result,
		 void *ivec)
{
    size_t sz, block_sz, checksum_sz;
    Checksum cksum;
    unsigned char *p, *q;
    krb5_error_code ret;
    const struct _krb5_encryption_type *et = crypto->et;

    checksum_sz = FUNC0(et->checksum);

    sz = et->confoundersize + checksum_sz + len;
    block_sz = (sz + et->padsize - 1) &~ (et->padsize - 1); /* pad */
    p = FUNC3(1, block_sz);
    if(p == NULL) {
	FUNC9(context, ENOMEM, FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }

    q = p;
    FUNC8(q, et->confoundersize); /* XXX */
    q += et->confoundersize;
    FUNC11(q, 0, checksum_sz);
    q += checksum_sz;
    FUNC10(q, data, len);

    ret = FUNC4(context,
			  et->checksum,
			  crypto,
			  0,
			  p,
			  block_sz,
			  &cksum);
    if(ret == 0 && cksum.checksum.length != checksum_sz) {
	FUNC7 (context);
	FUNC6(&cksum);
	ret = KRB5_CRYPTO_INTERNAL;
    }
    if(ret)
	goto fail;
    FUNC10(p + et->confoundersize, cksum.checksum.data, cksum.checksum.length);
    FUNC6(&cksum);
    ret = FUNC2(context, &crypto->key);
    if(ret)
	goto fail;
    ret = (*et->encrypt)(context, &crypto->key, p, block_sz, 1, 0, ivec);
    if (ret) {
	FUNC11(p, 0, block_sz);
	FUNC5(p);
	return ret;
    }
    result->data = p;
    result->length = block_sz;
    return 0;
 fail:
    FUNC11(p, 0, block_sz);
    FUNC5(p);
    return ret;
}