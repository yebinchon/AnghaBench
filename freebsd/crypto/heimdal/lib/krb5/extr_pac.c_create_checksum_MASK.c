#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_1__ checksum; } ;
typedef  TYPE_2__ Checksum ;

/* Variables and functions */
 scalar_t__ CKSUMTYPE_HMAC_MD5 ; 
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,size_t,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  KRB5_KU_OTHER_CKSUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context,
		const krb5_keyblock *key,
		uint32_t cksumtype,
		void *data, size_t datalen,
		void *sig, size_t siglen)
{
    krb5_crypto crypto = NULL;
    krb5_error_code ret;
    Checksum cksum;

    /* If the checksum is HMAC-MD5, the checksum type is not tied to
     * the key type, instead the HMAC-MD5 checksum is applied blindly
     * on whatever key is used for this connection, avoiding issues
     * with unkeyed checksums on des-cbc-md5 and des-cbc-crc.  See
     * http://comments.gmane.org/gmane.comp.encryption.kerberos.devel/8743
     * for the same issue in MIT, and
     * http://blogs.msdn.com/b/openspecification/archive/2010/01/01/verifying-the-server-signature-in-kerberos-privilege-account-certificate.aspx
     * for Microsoft's explaination */

    if (cksumtype == (uint32_t)CKSUMTYPE_HMAC_MD5) {
	ret = FUNC0(context, key, data, datalen,
				    KRB5_KU_OTHER_CKSUM, &cksum);
    } else {
	ret = FUNC4(context, key, 0, &crypto);
	if (ret)
	    return ret;

	ret = FUNC2(context, crypto, KRB5_KU_OTHER_CKSUM, 0,
				   data, datalen, &cksum);
	FUNC3(context, crypto);
	if (ret)
	    return ret;
    }
    if (cksum.checksum.length != siglen) {
	FUNC5(context, EINVAL, "pac checksum wrong length");
	FUNC1(&cksum);
	return EINVAL;
    }

    FUNC6(sig, cksum.checksum.data, siglen);
    FUNC1(&cksum);

    return 0;
}