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
struct _krb5_key_data {int dummy; } ;
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; int /*<<< orphan*/  keyed_checksum; scalar_t__ (* encrypt ) (int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,size_t,int /*<<< orphan*/ ,unsigned int,void*) ;} ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_11__ {unsigned long length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  TYPE_3__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {unsigned char* data; size_t length; } ;
struct TYPE_13__ {int /*<<< orphan*/  cksumtype; TYPE_1__ checksum; } ;
struct TYPE_12__ {struct _krb5_encryption_type* et; } ;
typedef  TYPE_4__ Checksum ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ KRB5_BAD_MSIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,struct _krb5_key_data**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct _krb5_key_data*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC13 (unsigned char*,unsigned long) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,size_t,int /*<<< orphan*/ ,unsigned int,void*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_4__*) ; 

__attribute__((used)) static krb5_error_code
FUNC16(krb5_context context,
			 krb5_crypto crypto,
			 unsigned usage,
			 void *data,
			 size_t len,
			 krb5_data *result,
			 void *ivec)
{
    size_t checksum_sz;
    Checksum cksum;
    unsigned char *p;
    krb5_error_code ret;
    struct _krb5_key_data *dkey;
    struct _krb5_encryption_type *et = crypto->et;
    unsigned long l;

    checksum_sz = FUNC0(et->keyed_checksum);
    if (len < checksum_sz + et->confoundersize) {
	FUNC9(context, KRB5_BAD_MSIZE,
			       FUNC4("Encrypted data shorter then "
				  "checksum + confunder", ""));
	return KRB5_BAD_MSIZE;
    }

    if (((len - checksum_sz) % et->padsize) != 0) {
	FUNC8(context);
	return KRB5_BAD_MSIZE;
    }

    p = FUNC10(len);
    if(len != 0 && p == NULL) {
	FUNC9(context, ENOMEM, FUNC4("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC11(p, data, len);

    len -= checksum_sz;

    ret = FUNC5(context, crypto, FUNC2(usage), &dkey);
    if(ret) {
	FUNC7(p);
	return ret;
    }
    ret = FUNC6(context, dkey);
    if(ret) {
	FUNC7(p);
	return ret;
    }
    ret = (*et->encrypt)(context, dkey, p, len, 0, usage, ivec);
    if (ret) {
	FUNC7(p);
	return ret;
    }

    cksum.checksum.data   = p + len;
    cksum.checksum.length = checksum_sz;
    cksum.cksumtype       = FUNC1(et->keyed_checksum);

    ret = FUNC15(context,
			  crypto,
			  FUNC3(usage),
			  p,
			  len,
			  &cksum);
    if(ret) {
	FUNC7(p);
	return ret;
    }
    l = len - et->confoundersize;
    FUNC12(p, p + et->confoundersize, l);
    result->data = FUNC13(p, l);
    if(result->data == NULL && l != 0) {
	FUNC7(p);
	FUNC9(context, ENOMEM, FUNC4("malloc: out of memory", ""));
	return ENOMEM;
    }
    result->length = l;
    return 0;
}