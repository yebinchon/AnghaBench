#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct _krb5_encryption_type {size_t padsize; size_t confoundersize; int /*<<< orphan*/  checksum; scalar_t__ (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;} ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  TYPE_2__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {int /*<<< orphan*/  cksumtype; int /*<<< orphan*/  checksum; } ;
struct TYPE_9__ {int /*<<< orphan*/  key; struct _krb5_encryption_type* et; } ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ KRB5_BAD_MSIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC13 (unsigned char*,size_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_3__*) ; 

__attribute__((used)) static krb5_error_code
FUNC16(krb5_context context,
		 krb5_crypto crypto,
		 void *data,
		 size_t len,
		 krb5_data *result,
		 void *ivec)
{
    krb5_error_code ret;
    unsigned char *p;
    Checksum cksum;
    size_t checksum_sz, l;
    struct _krb5_encryption_type *et = crypto->et;

    if ((len % et->padsize) != 0) {
	FUNC6(context);
	return KRB5_BAD_MSIZE;
    }
    checksum_sz = FUNC0(et->checksum);
    if (len < checksum_sz + et->confoundersize) {
	FUNC8(context, KRB5_BAD_MSIZE,
			       FUNC2("Encrypted data shorter then "
				  "checksum + confunder", ""));
	return KRB5_BAD_MSIZE;
    }

    p = FUNC9(len);
    if(len != 0 && p == NULL) {
	FUNC8(context, ENOMEM, FUNC2("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC10(p, data, len);

    ret = FUNC3(context, &crypto->key);
    if(ret) {
	FUNC4(p);
	return ret;
    }
    ret = (*et->encrypt)(context, &crypto->key, p, len, 0, 0, ivec);
    if (ret) {
	FUNC4(p);
	return ret;
    }
    ret = FUNC7(&cksum.checksum, p + et->confoundersize, checksum_sz);
    if(ret) {
 	FUNC4(p);
 	return ret;
    }
    FUNC12(p + et->confoundersize, 0, checksum_sz);
    cksum.cksumtype = FUNC1(et->checksum);
    ret = FUNC15(context, NULL, 0, p, len, &cksum);
    FUNC5(&cksum);
    if(ret) {
	FUNC4(p);
	return ret;
    }
    l = len - et->confoundersize - checksum_sz;
    FUNC11(p, p + et->confoundersize + checksum_sz, l);
    result->data = FUNC13(p, l);
    if(result->data == NULL && l != 0) {
	FUNC4(p);
	FUNC8(context, ENOMEM, FUNC2("malloc: out of memory", ""));
	return ENOMEM;
    }
    result->length = l;
    return 0;
}