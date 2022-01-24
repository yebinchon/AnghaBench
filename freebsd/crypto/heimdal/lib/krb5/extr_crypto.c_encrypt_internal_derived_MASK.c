#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct _krb5_key_data {int dummy; } ;
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; scalar_t__ (* encrypt ) (int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,size_t,int,unsigned int,void*) ;int /*<<< orphan*/  keyed_checksum; } ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_12__ {unsigned char* data; size_t length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  TYPE_3__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_11__ {size_t length; void const* data; } ;
struct TYPE_14__ {TYPE_1__ checksum; } ;
struct TYPE_13__ {struct _krb5_encryption_type* et; } ;
typedef  TYPE_4__ Checksum ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ KRB5_CRYPTO_INTERNAL ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,struct _krb5_key_data**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct _krb5_key_data*) ; 
 unsigned char* FUNC6 (int,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,size_t,int,unsigned int,void*) ; 

__attribute__((used)) static krb5_error_code
FUNC16(krb5_context context,
			 krb5_crypto crypto,
			 unsigned usage,
			 const void *data,
			 size_t len,
			 krb5_data *result,
			 void *ivec)
{
    size_t sz, block_sz, checksum_sz, total_sz;
    Checksum cksum;
    unsigned char *p, *q;
    krb5_error_code ret;
    struct _krb5_key_data *dkey;
    const struct _krb5_encryption_type *et = crypto->et;

    checksum_sz = FUNC0(et->keyed_checksum);

    sz = et->confoundersize + len;
    block_sz = (sz + et->padsize - 1) &~ (et->padsize - 1); /* pad */
    total_sz = block_sz + checksum_sz;
    p = FUNC6(1, total_sz);
    if(p == NULL) {
	FUNC12(context, ENOMEM, FUNC3("malloc: out of memory", ""));
	return ENOMEM;
    }

    q = p;
    FUNC11(q, et->confoundersize); /* XXX */
    q += et->confoundersize;
    FUNC13(q, data, len);

    ret = FUNC7(context,
			  et->keyed_checksum,
			  crypto,
			  FUNC2(usage),
			  p,
			  block_sz,
			  &cksum);
    if(ret == 0 && cksum.checksum.length != checksum_sz) {
	FUNC9 (&cksum);
	FUNC10 (context);
	ret = KRB5_CRYPTO_INTERNAL;
    }
    if(ret)
	goto fail;
    FUNC13(p + block_sz, cksum.checksum.data, cksum.checksum.length);
    FUNC9 (&cksum);
    ret = FUNC4(context, crypto, FUNC1(usage), &dkey);
    if(ret)
	goto fail;
    ret = FUNC5(context, dkey);
    if(ret)
	goto fail;
    ret = (*et->encrypt)(context, dkey, p, block_sz, 1, usage, ivec);
    if (ret)
	goto fail;
    result->data = p;
    result->length = total_sz;
    return 0;
 fail:
    FUNC14(p, 0, total_sz);
    FUNC8(p);
    return ret;
}