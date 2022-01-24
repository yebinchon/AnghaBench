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
struct TYPE_10__ {char* data; size_t length; } ;
typedef  TYPE_2__ krb5_data ;
struct TYPE_9__ {size_t length; char* data; } ;
struct TYPE_11__ {TYPE_1__ data; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ krb5_crypto_iov ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  iov ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_DATA ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_EMPTY ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_HEADER ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_PADDING ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_TRAILER ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*,size_t,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC11(krb5_context context,
	     krb5_crypto crypto,
	     unsigned usage,
	     size_t cipher_len,
	     krb5_data *clear)
{
    krb5_crypto_iov iov[4];
    krb5_data decrypt;
    int ret;
    char *p, *q;
    size_t len, i;

    p = clear->data;
    len = clear->length;

    iov[0].flags = KRB5_CRYPTO_TYPE_HEADER;
    FUNC3(context, crypto, iov[0].flags, &iov[0].data.length);
    iov[0].data.data = FUNC0(iov[0].data.length);

    iov[1].flags = KRB5_CRYPTO_TYPE_DATA;
    iov[1].data.length = len;
    iov[1].data.data = FUNC0(iov[1].data.length);
    FUNC10(iov[1].data.data, p, iov[1].data.length);

    /* padding buffer */
    iov[2].flags = KRB5_CRYPTO_TYPE_PADDING;
    FUNC3(context, crypto, KRB5_CRYPTO_TYPE_PADDING, &iov[2].data.length);
    iov[2].data.data = FUNC0(iov[2].data.length);

    iov[3].flags = KRB5_CRYPTO_TYPE_TRAILER;
    FUNC3(context, crypto, iov[3].flags, &iov[3].data.length);
    iov[3].data.data = FUNC0(iov[3].data.length);

    ret = FUNC7(context, crypto, usage,
				iov, sizeof(iov)/sizeof(iov[0]), NULL);
    if (ret)
	FUNC1(1, "encrypt iov failed: %d", ret);

    /* check len */
    for (i = 0, len = 0; i < sizeof(iov)/sizeof(iov[0]); i++)
	len += iov[i].data.length;
    if (len != cipher_len)
	FUNC1(1, "cipher len wrong");

    /*
     * Plain decrypt
     */

    p = q = FUNC0(len);
    for (i = 0; i < sizeof(iov)/sizeof(iov[0]); i++) {
	FUNC10(q, iov[i].data.data, iov[i].data.length);
	q += iov[i].data.length;
    }

    ret = FUNC5(context, crypto, usage, p, len, &decrypt);
    if (ret)
	FUNC8(context, 1, ret, "krb5_decrypt");
    else
	FUNC4(&decrypt);

    FUNC2(p);

    /*
     * Now decrypt use iov
     */

    /* padding turn into data */
    p = q = FUNC0(iov[1].data.length + iov[2].data.length);

    FUNC10(q, iov[1].data.data, iov[1].data.length);
    q += iov[1].data.length;
    FUNC10(q, iov[2].data.data, iov[2].data.length);

    FUNC2(iov[1].data.data);
    FUNC2(iov[2].data.data);

    iov[1].data.data = p;
    iov[1].data.length += iov[2].data.length;

    iov[2].flags = KRB5_CRYPTO_TYPE_EMPTY;
    iov[2].data.length = 0;

    ret = FUNC6(context, crypto, usage,
				iov, sizeof(iov)/sizeof(iov[0]), NULL);
    FUNC2(iov[0].data.data);
    FUNC2(iov[3].data.data);

    if (ret)
	FUNC8(context, 1, ret, "decrypt iov failed: %d", ret);

    if (clear->length != iov[1].data.length)
	FUNC1(1, "length incorrect");

    p = clear->data;
    if (FUNC9(iov[1].data.data, p, iov[1].data.length) != 0)
	FUNC1(1, "iov[1] incorrect");

    FUNC2(iov[1].data.data);

    return 0;
}