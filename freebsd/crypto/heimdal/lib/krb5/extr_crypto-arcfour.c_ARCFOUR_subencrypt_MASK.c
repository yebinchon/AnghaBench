#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct _krb5_key_data {TYPE_2__* key; } ;
struct _krb5_checksum_type {int dummy; } ;
struct TYPE_5__ {int length; unsigned char* data; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  k3_c_data ;
typedef  int /*<<< orphan*/  k2_c_data ;
typedef  int /*<<< orphan*/  k1_c_data ;
struct TYPE_7__ {TYPE_1__ checksum; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_RSA_MD5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct _krb5_checksum_type* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct _krb5_checksum_type*,void*,int,int /*<<< orphan*/ ,struct _krb5_key_data*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context,
		   struct _krb5_key_data *key,
		   void *data,
		   size_t len,
		   unsigned usage,
		   void *ivec)
{
    EVP_CIPHER_CTX *ctx;
    struct _krb5_checksum_type *c = FUNC5 (CKSUMTYPE_RSA_MD5);
    Checksum k1_c, k2_c, k3_c, cksum;
    struct _krb5_key_data ke;
    krb5_keyblock kb;
    unsigned char t[4];
    unsigned char *cdata = data;
    unsigned char k1_c_data[16], k2_c_data[16], k3_c_data[16];
    krb5_error_code ret;

    t[0] = (usage >>  0) & 0xFF;
    t[1] = (usage >>  8) & 0xFF;
    t[2] = (usage >> 16) & 0xFF;
    t[3] = (usage >> 24) & 0xFF;

    k1_c.checksum.length = sizeof(k1_c_data);
    k1_c.checksum.data   = k1_c_data;

    ret = FUNC6(NULL, c, t, sizeof(t), 0, key, &k1_c);
    if (ret)
	FUNC7(context, "hmac failed");

    FUNC8 (k2_c_data, k1_c_data, sizeof(k1_c_data));

    k2_c.checksum.length = sizeof(k2_c_data);
    k2_c.checksum.data   = k2_c_data;

    ke.key = &kb;
    kb.keyvalue = k2_c.checksum;

    cksum.checksum.length = 16;
    cksum.checksum.data   = data;

    ret = FUNC6(NULL, c, cdata + 16, len - 16, 0, &ke, &cksum);
    if (ret)
	FUNC7(context, "hmac failed");

    ke.key = &kb;
    kb.keyvalue = k1_c.checksum;

    k3_c.checksum.length = sizeof(k3_c_data);
    k3_c.checksum.data   = k3_c_data;

    ret = FUNC6(NULL, c, data, 16, 0, &ke, &k3_c);
    if (ret)
	FUNC7(context, "hmac failed");

    ctx = FUNC1();
    if (ctx == NULL)
	FUNC7(context, "malloc failed");

    FUNC3(ctx, FUNC4(), NULL, k3_c.checksum.data, NULL, 1);
    FUNC2(ctx, cdata + 16, cdata + 16, len - 16);
    FUNC0(ctx);

    FUNC9 (k1_c_data, 0, sizeof(k1_c_data));
    FUNC9 (k2_c_data, 0, sizeof(k2_c_data));
    FUNC9 (k3_c_data, 0, sizeof(k3_c_data));
    return 0;
}