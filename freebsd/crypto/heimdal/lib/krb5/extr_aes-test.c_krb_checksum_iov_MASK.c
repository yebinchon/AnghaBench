#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* data; size_t length; } ;
typedef  TYPE_2__ krb5_data ;
struct TYPE_7__ {size_t length; char* data; } ;
struct TYPE_9__ {TYPE_1__ data; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ krb5_crypto_iov ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  iov ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_CHECKSUM ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_DATA ; 
 int /*<<< orphan*/  KRB5_CRYPTO_TYPE_TRAILER ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (size_t) ; 

__attribute__((used)) static int
FUNC7(krb5_context context,
		 krb5_crypto crypto,
		 unsigned usage,
		 krb5_data *plain)
{
    krb5_crypto_iov iov[4];
    int ret;
    char *p;
    size_t len;

    p = plain->data;
    len = plain->length;

    iov[0].flags = KRB5_CRYPTO_TYPE_CHECKSUM;
    FUNC3(context, crypto, iov[0].flags, &iov[0].data.length);
    iov[0].data.data = FUNC0(iov[0].data.length);

    iov[1].flags = KRB5_CRYPTO_TYPE_DATA;
    iov[1].data.length = len;
    iov[1].data.data = p;

    iov[2].flags = KRB5_CRYPTO_TYPE_TRAILER;
    FUNC3(context, crypto, iov[0].flags, &iov[2].data.length);
    iov[2].data.data = FUNC6(iov[2].data.length);

    ret = FUNC2(context, crypto, usage,
				   iov, sizeof(iov)/sizeof(iov[0]), NULL);
    if (ret)
	FUNC4(context, 1, ret, "krb5_create_checksum_iov failed");

    ret = FUNC5(context, crypto, usage, iov, sizeof(iov)/sizeof(iov[0]), NULL);
    if (ret)
	FUNC4(context, 1, ret, "krb5_verify_checksum_iov");

    FUNC1(iov[0].data.data);
    FUNC1(iov[2].data.data);

    return 0;
}