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
typedef  int /*<<< orphan*/  tmp ;
struct _krb5_key_data {TYPE_2__* key; } ;
struct _krb5_checksum_type {int dummy; } ;
typedef  int /*<<< orphan*/  signature ;
typedef  int /*<<< orphan*/  ksign_c_data ;
struct TYPE_5__ {int length; unsigned char* data; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {TYPE_1__ checksum; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  CKSUMTYPE_RSA_MD5 ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 struct _krb5_checksum_type* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct _krb5_checksum_type*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC10(krb5_context context,
			struct _krb5_key_data *key,
			const void *data,
			size_t len,
			unsigned usage,
			Checksum *result)
{
    EVP_MD_CTX *m;
    struct _krb5_checksum_type *c = FUNC7 (CKSUMTYPE_RSA_MD5);
    const char signature[] = "signaturekey";
    Checksum ksign_c;
    struct _krb5_key_data ksign;
    krb5_keyblock kb;
    unsigned char t[4];
    unsigned char tmp[16];
    unsigned char ksign_c_data[16];
    krb5_error_code ret;

    m = FUNC3();
    if (m == NULL) {
	FUNC9(context, ENOMEM, FUNC6("malloc: out of memory", ""));
	return ENOMEM;
    }
    ksign_c.checksum.length = sizeof(ksign_c_data);
    ksign_c.checksum.data   = ksign_c_data;
    ret = FUNC8(context, c, signature, sizeof(signature),
			      0, key, &ksign_c);
    if (ret) {
	FUNC4(m);
	return ret;
    }
    ksign.key = &kb;
    kb.keyvalue = ksign_c.checksum;
    FUNC1(m, FUNC5(), NULL);
    t[0] = (usage >>  0) & 0xFF;
    t[1] = (usage >>  8) & 0xFF;
    t[2] = (usage >> 16) & 0xFF;
    t[3] = (usage >> 24) & 0xFF;
    FUNC2(m, t, 4);
    FUNC2(m, data, len);
    FUNC0 (m, tmp, NULL);
    FUNC4(m);

    ret = FUNC8(context, c, tmp, sizeof(tmp), 0, &ksign, result);
    if (ret)
	return ret;
    return 0;
}