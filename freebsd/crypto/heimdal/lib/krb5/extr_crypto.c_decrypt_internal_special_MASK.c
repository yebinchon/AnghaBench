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
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; scalar_t__ (* encrypt ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ,int,void*) ;int /*<<< orphan*/  checksum; } ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_5__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  TYPE_2__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {int /*<<< orphan*/  key; struct _krb5_encryption_type* et; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KRB5_BAD_MSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned char*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context,
			 krb5_crypto crypto,
			 int usage,
			 void *data,
			 size_t len,
			 krb5_data *result,
			 void *ivec)
{
    struct _krb5_encryption_type *et = crypto->et;
    size_t cksum_sz = FUNC0(et->checksum);
    size_t sz = len - cksum_sz - et->confoundersize;
    unsigned char *p;
    krb5_error_code ret;

    if ((len % et->padsize) != 0) {
	FUNC3(context);
	return KRB5_BAD_MSIZE;
    }
    if (len < cksum_sz + et->confoundersize) {
	FUNC4(context, KRB5_BAD_MSIZE,
			       FUNC1("Encrypted data shorter then "
				  "checksum + confunder", ""));
	return KRB5_BAD_MSIZE;
    }

    p = FUNC5 (len);
    if (p == NULL) {
	FUNC4(context, ENOMEM, FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC6(p, data, len);

    ret = (*et->encrypt)(context, &crypto->key, p, len, FALSE, usage, ivec);
    if (ret) {
	FUNC2(p);
	return ret;
    }

    FUNC7 (p, p + cksum_sz + et->confoundersize, sz);
    result->data = FUNC8(p, sz);
    if(result->data == NULL && sz != 0) {
	FUNC2(p);
	FUNC4(context, ENOMEM, FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }
    result->length = sz;
    return 0;
}